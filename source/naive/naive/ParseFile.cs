using System;

namespace naive
{
    class ParseFile
    {
        public long fileLine = 0;
        String shortName = "";

        public void Do(String fileName,String shortname)
        {
            if (System.IO.File.Exists(fileName))
            {
                Console.WriteLine("Try to parse: " + fileName);
                System.IO.StreamReader file = new System.IO.StreamReader(fileName);
                if (file == null) { Console.WriteLine("Can not open " + fileName + " may be bad path in naive.cfg?"); return; }
                String line;
                Program.totalFiles++;
                shortName = shortname;
                long fileLine = 0;
                line = file.ReadLine();
                while (file.Peek() >= 0)
                {
                    fileLine++;
                    Program.totalLines++;
                    if (line.Length == 0) { line = file.ReadLine(); continue; }
                    Preprocessor preprocessor = new Preprocessor();
                    String s = preprocessor.Do(RemoveComments(line), fileLine, fileName, file, this);

                    SplitToSubLine(s, fileLine, fileName, file);
                    line = file.ReadLine();
                }
                file.Close();
            } else
            {
                Console.WriteLine("Can not find " + fileName + " may be bad path in naive.cfg?");
                return;
            }
        }
        // remove end of string comments
        String RemoveComments(String line)
        {
            Int32 idx;
            if ((idx = line.IndexOf("//")) > -1) return line.Substring(0, idx).Trim(); else return line.Trim();
        }
        // split string to elementary operation
        void SplitToSubLine(String line, long l, String name, System.IO.StreamReader f)
        {
            String[] subLineArray = line.Split(';');
            foreach (String s in subLineArray)
            {
                if (s.Length != 0) ParseSubLines(s, l, name);
            }
        }
        // parse elementary operation
        void ParseSubLines(String subline, long l, String name)
        {
            if (subline.Length > 0) {
                if (Program.target == "stm8s" || Program.target == "stm8l")
                {
                    AsmStm8 assembler = new AsmStm8();
                    assembler.Do(subline, l, shortName);
                }
            }
        }
    }
}
