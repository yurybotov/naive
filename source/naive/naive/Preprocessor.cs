using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace naive
{
    class Preprocessor
    {
        public String Do( String line, long l, String name, System.IO.StreamReader f, ParseFile parent)
        {
            String outString ="";
            if (line.Length > 7 && line.Substring(0, 7) == "include")
            {
                ParseFile parseFile = new ParseFile();
                String s = line.Substring(8).Trim();
                if (System.IO.File.Exists(s))
                {
                    parseFile.Do(s,s);
                } else
                {
                    if (Program.defined["naive_targets_path"]!=null && System.IO.File.Exists(Program.defined["naive_targets_path"]+s))
                    {
                        parseFile.Do(Program.defined["naive_targets_path"] + s,s);
                    }
                    else
                    {
                        if (Program.defined["naive_libs_path"] !=null && System.IO.File.Exists(Program.defined["naive_libs_path"] + s))
                        {
                            parseFile.Do(Program.defined["naive_libs_path"] + s, s);
                        }
                        else
                        {
                            Program.Error(name, l, "Cant find file:" + s);
                        }
                    }
                }
                return outString;
            }
            else if (line.Length > 6 && line.Substring(0, 6) == "define")
            {
                if (line.Substring(7).IndexOf('(') < 0) // const define
                {
                    String[] s = line.Substring(7).Trim().Replace('\t', ' ').Replace("  ", " ").Split(' ');
                    if (s.Length == 2) { Program.defined.Add(s[0], s[1]); Console.WriteLine("Defined: " + s[0] + " as " + s[1]); }
                    else if (s.Length == 1) { Program.defined.Add(s[0], ""); Console.WriteLine("Defined: " + s[0] + " as ''"); }
                    return outString;
                } else // macro define
                {
                    String s = line.Substring(7).Trim().Replace('\t', ' ').Replace("  ", " ");
                    Match res = Regex.Match(s, @"(\w[\w\d]+)\((.+)\)\b*(.+)", RegexOptions.IgnoreCase);
                    if (res.Success)
                    {
                        String key = res.Groups[1].ToString();
                        String par = res.Groups[2].ToString();
                        String fun = res.Groups[3].ToString();
                        Program.fundefined.Add(key, fun+","+par); Console.WriteLine("Defined: " + key + " with params " + par + " as " + fun);
                    }
                    return outString;
                }
            }
            else if (line.Length > 5 && line.Substring(0, 5) == "undef")
            {
                String[] s = line.Substring(7).Trim().Replace('\t', ' ').Replace("  ", " ").Split(' ');
                if (Program.IfDefined(s[0])) { Program.defined.Remove(s[0]); }
                if (Program.IfFunDefined(s[0])) { Program.fundefined.Remove(s[0]); }
                return outString;
            }
            else if (line.Length > 5 && line.Substring(0, 5) == "ifdef")
            {
                String[] s = line.Substring(7).Trim().Replace('\t', ' ').Replace("  ", " ").Split(' ');
                if ( !Program.defined.ContainsKey(s[0]))
                {
                    int q = 1;
                    while (q > 0)
                    {
                        line = f.ReadLine();
                        parent.fileLine++;
                        Program.totalLines++;
                        if (line == null) break;
                        if (line.IndexOf("ifdef") >= -1) { q++; }
                        else if (line.IndexOf("ifndef") >= -1) { q++; }
                        else if (line.IndexOf("endif") >= -1) { q--; }
                    }
                }
                return outString;
            }
            else if (line.Length > 6 && line.Substring(0, 6) == "ifndef")
            {
                String[] s = line.Substring(7).Trim().Replace('\t', ' ').Replace("  ", " ").Split(' ');
                if (Program.defined.ContainsKey(s[0]))
                {
                    int q = 1;
                    while (q > 0)
                    {
                        line = f.ReadLine();
                        parent.fileLine++;
                        Program.totalLines++;
                        if (line == null) break;
                        if (line.IndexOf("ifdef") >= -1) { q++; }
                        else if (line.IndexOf("ifndef") >= -1) { q++; }
                        else if (line.IndexOf("endif") >= -1) { q--; }
                    }
                }
                return outString;
            }
            else if (line.Length > 5 && line.Substring(0, 5) == "endif")
            {
                return outString;
            }
            else
            {
                outString = line;
                foreach (var item in Program.fundefined)
                {
                    Match res = Regex.Match(outString, item.Key+@"\((.+)\)", RegexOptions.IgnoreCase);
                    if (res.Success)
                    {
                        String[] par = res.Groups[1].ToString().Split(',');
                        String[] fun = item.Value.Split(',');
                        if(par.Length == fun.Length-1)
                        {
                            String s1 = fun[0];
                            for(int i = 0; i < par.Length; i++)
                            {
                                s1 = s1.Replace(fun[i+1],par[i]);
                            }
                            outString = outString.Replace(res.Groups[0].ToString(), s1);
                            outString = outString.Replace("@0", "local0label" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@1", "local1label" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@2", "local2label" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@3", "local3label" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@4", "local4label" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@5", "local5label" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@6", "local6label" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@7", "local7label" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@8", "local8label" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@9", "local9label" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@a", "localalabel" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@b", "localblabel" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@c", "localclabel" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@d", "localdlabel" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@e", "localelabel" + Program.macrocounter); Program.macrocounter++;
                            outString = outString.Replace("@f", "localflabel" + Program.macrocounter); Program.macrocounter++;                           
                        } else
                        {
                            Program.Error(name, l, "Macro mismatch parameters count");
                        }
                    }
                }
                foreach (var item in Program.defined)
                {
                    outString = outString.Replace(item.Key,item.Value);
                }
                return outString.Replace(" ", "").Replace("\t", "");
            }
        }
    }
}
