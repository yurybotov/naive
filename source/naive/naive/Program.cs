using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;

namespace naive
{
    class Program
    {
        public static String target = "";
        public static long totalFiles = 0L;
        public static long totalLines = 0L;
        public static System.IO.StreamWriter output = null;
        public static long macrocounter = 0L;

        public static String currentSegment = "flash";

        public static Dictionary<String, String> defined = new Dictionary<String, String>();
        public static Dictionary<String, String> fundefined = new Dictionary<String, String>();

        public static Boolean IfDefined(String s)
        {
            return defined.ContainsKey(s);
        }
        public static Boolean IfFunDefined(String s)
        {
            return fundefined.ContainsKey(s);
        }
        public static String Defined(String s)
        {
            if (defined.ContainsKey(s))
            {
                return defined[s];
            }
            else
            {
                return "";
            }
        }

        static void Main( String[] args)
        {
            // ReadArgs
            Console.WriteLine("Naive assembler, Copyright 2017 Yury Botov");
            if (args.Length < 1)
            {
                Console.WriteLine("Using: {pathto\\}naive filename.target._");
                Console.WriteLine("for example: naive test.stm8s._");
                Console.WriteLine("Configuration must be in naive.cfg at current directory");
                return;
            }


            String fullpath = args[0];
            String path = "";
            String file = "";
            String fileName = "";
            String file1Ext = "";
            String file2Ext = "";
            if (fullpath.IndexOf('\'') >= 0)
            {
                Int32 pos = fullpath.LastIndexOf('\'');
                path = fullpath.Substring(0, pos);
                file = fullpath.Substring(pos+1);
            } else
            {
                file = fullpath;
            }
            String[] a = file.Split('.');
            fileName = a[0];
            file1Ext = a[1];
            file2Ext = a[2];
            if (file2Ext != "_") { Console.WriteLine("Wrong extension, must be *.target._"); return; }
            if (file1Ext != "stm8s" && file1Ext != "stm8l") { Console.WriteLine("Wrong target, now support only stm8s and stm8l"); return; }
            target = file1Ext;
            // Load settings file
            if (System.IO.File.Exists("naive.cfg"))
            {
                System.IO.StreamReader configFile = new System.IO.StreamReader("naive.cfg");
                String cfgline = "";
                cfgline = configFile.ReadLine();
                while (configFile.Peek() >= 0)
                {
                    if (cfgline.Length == 0) { cfgline = configFile.ReadLine(); continue; }
                    String[] cfgpair = cfgline.Split('|');
                    defined.Add(cfgpair[0], cfgpair[1]);
                    cfgline = configFile.ReadLine();
                }
                configFile.Close();
            } else
            {
                Console.WriteLine("naive.cfg in current directory is absent. Please create it with right paths.");
                return;
            }

            // Open output file
            if (defined["user_output_path"] != null)
            {
                Console.WriteLine("Open output file: " + defined["user_output_path"] + fileName + ".asm");
                output = new System.IO.StreamWriter(defined["user_output_path"] + fileName + ".asm");
                if (output == null) { Console.WriteLine("Can not open output file, may be bad path in naive.cfg?"); return; }
            } else
            {
                Console.WriteLine("Do not defined 'user_output_path' Look at you naive.cfg in current directory"); return;
            }

            if (target == "stm8s" || target == "stm8l") output.Write(AsmStm8.header);

            // ParseFile
            ParseFile parseFile = new ParseFile();
            if (defined["user_code_path"] != null)
            {
                parseFile.Do(defined["user_code_path"] + file, file);
            } else
            {
                Console.WriteLine("Do not defined 'user_code_path' Look at you naive.cfg in current directory"); return;
            }
            if (target == "stm8s" || target == "stm8l") output.Write(AsmStm8.footer);
            output.Close();
            Console.WriteLine("Total " + totalFiles + " files with " + totalLines + " lines parsed");
            if (target == "stm8s" || target == "stm8l")
            {
                // start native stm8 assembler if it present
                if (System.IO.File.Exists(defined["stm8s_sdk_path"] + "asm.exe") &&
                    System.IO.File.Exists(defined["stm8s_sdk_path"] + "lyn.exe") &&
                    System.IO.File.Exists(defined["stm8s_sdk_path"] + "obsend.exe") &&
                    System.IO.File.Exists(defined["stm8s_sdk_path"] + "abslist.exe") )
                {
                    String command = "\""+defined["stm8s_sdk_path"] + "asm.exe\" -sym -li=" + defined["user_output_path"] + fileName +
                        ".lsr " + defined["user_output_path"] + fileName + "\n\"" + defined["stm8s_sdk_path"] + "lyn.exe\" " +
                        defined["user_output_path"] + fileName + ".obj, " + defined["user_output_path"] + fileName + ",;\n\"" +
                        defined["stm8s_sdk_path"] + "obsend.exe\" " + defined["user_output_path"] + fileName + ",f," +
                        defined["user_output_path"] + fileName + ".s19,s\n\"" + defined["stm8s_sdk_path"] + "abslist.exe\" " +
                        defined["user_output_path"] + fileName + ".lsr -o " + defined["user_output_path"] + fileName + ".lst -fmt srec -exe " +
                        defined["user_output_path"] + fileName + ".s19 -map " + defined["user_output_path"] + fileName + ".map\nexit\n";
                    var process = new Process
                    {
                        StartInfo = new ProcessStartInfo
                        {
                            FileName = "cmd.exe",
                            RedirectStandardInput = true,
                            UseShellExecute = false

                        }
                    };
                    process.Start();
                    using (StreamWriter pWriter = process.StandardInput)
                    {
                        if (pWriter.BaseStream.CanWrite)
                        {
                            foreach (var line in command.Split('\n'))
                                pWriter.WriteLine(line);
                        }
                    }
                } else
                {
                    Console.WriteLine("Check stm8s sdk path in naive.cfg now it wrong");
                    return;
                }
            }
            return;
        }

        public static void Error( String name, long l, String description)
        {
            Console.WriteLine("Error: "+name+":"+l+" "+description);
        }
    }
}
