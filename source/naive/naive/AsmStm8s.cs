using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace naive
{
    class Labels
    {
        public String searchTemplate;
        public delegate void DoIt(Match m);
        public DoIt doIt;

        public Labels(String searchTemplate, DoIt doIt)
        {
            this.searchTemplate = searchTemplate;
            this.doIt = doIt;
        }
    }

    class Codes
    {
        public String searchTemplate;
        public delegate void DoIt(Match m);
        public DoIt doIt;

        public Codes(String searchTemplate, DoIt doIt)
        {
            this.searchTemplate = searchTemplate;
            this.doIt = doIt;
        }
    }

    enum AddressingModes { Register, Immediate, Direct, DirectBit, Indexed, DirectIndexed, Indirect, IndirectIndexed, Unknown };

    class AddressingModeInfo
    {
        public AddressingModes am;
        public String r;

        public AddressingModeInfo(AddressingModes am, String r)
        {
            this.am = am;
            this.r = r;
        }
    }

    class AsmStm8
    {
        List<Labels> dataSearch = new List<Labels>();
        List<Codes> codeSearch = new List<Codes>();

        public string fileName = "";
        public long lineNumber = 0;

        static Boolean rfirst = true;
        static Boolean mfirst = true;
        static Boolean efirst = true;
        static Boolean ffirst = true;

        public static String ident = @"\w[\w\d]+";
        public static String number = @"0?x?[\dabcdef]+";
        public static String register = @"(cc|sp|xl|xh|yl|yh|x|y|a)";
        public static String register8 = @"(cc|xl|xh|yl|yh|a)";
        public static String register16 = @"(sp|x|y)";
        public static String axysp = @"(sp|x|y|a)";
        public static String axy = @"(x|y|a)";
        public static String xy = @"(x|y)";
        public static String ax = @"(x|a)";

        public static String any = @".+";

        public static String indirectindexedT = @"^\[(" + ident + @")\[" + register16 + @"\]\]$";
        public static String indirectindexedF = @"^\{(" + ident + @")\[" + register16 + @"\]\}$";
        public static String indirectT = @"^\[(" + ident + @")\]$";
        public static String indirectF = @"^\{(" + ident + @")\}$";
        public static String directindexed1T = @"^(" + ident + @")\[" + register16 + @"\]$";
        public static String directindexed2T = @"^" + register16 + @"\[(" + number + @")\]$";
        public static String directbitT = @"^(" + ident + @")\#(\d)$";
        public static String indexedT = @"^\[" + register16 + @"\]$";
        public static String directT = @"^(.+)$";
        public static String immediateT = @"^\#(.+)$";

        public static String header =
            "stm8\n\n" +
            "\n";
        public static String footer =
            "\n\tend\n\n";

        public static AddressingModeInfo[] typical1 = {
            new AddressingModeInfo(AddressingModes.Immediate,""),
            new AddressingModeInfo(AddressingModes.Direct,""),
            new AddressingModeInfo(AddressingModes.Indexed,"x"),
            new AddressingModeInfo(AddressingModes.Indexed,"y"),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"x"),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"y"),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"sp"),
            new AddressingModeInfo(AddressingModes.Indirect,""),
            new AddressingModeInfo(AddressingModes.IndirectIndexed,"x"),
            new AddressingModeInfo(AddressingModes.IndirectIndexed,"y")
        };
        public static AddressingModeInfo[] immediateOnly = {
            new AddressingModeInfo(AddressingModes.Immediate,"")
        };
        public static AddressingModeInfo[] directOnly = {
            new AddressingModeInfo(AddressingModes.Direct,"")
        };
        public static AddressingModeInfo[] directIndirectOnly = {
            new AddressingModeInfo(AddressingModes.Direct,""),
            new AddressingModeInfo(AddressingModes.Indirect,"")
        };
        public static AddressingModeInfo[] typical2 = {
            new AddressingModeInfo(AddressingModes.Immediate,""),
            new AddressingModeInfo(AddressingModes.Direct,""),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"sp")
        };
        public static AddressingModeInfo[] typical3 = {
            new AddressingModeInfo(AddressingModes.Register,"a"),
            new AddressingModeInfo(AddressingModes.Direct,""),
            new AddressingModeInfo(AddressingModes.Indexed,"x"),
            new AddressingModeInfo(AddressingModes.Indexed,"y"),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"x"),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"y"),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"sp"),
            new AddressingModeInfo(AddressingModes.Indirect,""),
            new AddressingModeInfo(AddressingModes.IndirectIndexed,"x"),
            new AddressingModeInfo(AddressingModes.IndirectIndexed,"y")
        };
        public static AddressingModeInfo[] xyonly = {
            new AddressingModeInfo(AddressingModes.Register,"x"),
            new AddressingModeInfo(AddressingModes.Register,"y")
        };
        public static AddressingModeInfo[] typical4x = {
            new AddressingModeInfo(AddressingModes.Immediate,""),
            new AddressingModeInfo(AddressingModes.Direct,""),
            new AddressingModeInfo(AddressingModes.Indexed,"y"),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"y"),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"sp"),
            new AddressingModeInfo(AddressingModes.Indirect,""),
            new AddressingModeInfo(AddressingModes.IndirectIndexed,"y")
        };
        public static AddressingModeInfo[] typical4y = {
            new AddressingModeInfo(AddressingModes.Immediate,""),
            new AddressingModeInfo(AddressingModes.Direct,""),
            new AddressingModeInfo(AddressingModes.Indexed,"x"),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"x"),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"sp"),
            new AddressingModeInfo(AddressingModes.Indirect,""),
            new AddressingModeInfo(AddressingModes.IndirectIndexed,"x")
        };
        public static AddressingModeInfo[] bitonly = {
            new AddressingModeInfo(AddressingModes.DirectBit,"")
        };
        public static AddressingModeInfo[] exgonly = {
            new AddressingModeInfo(AddressingModes.Register,"xl"),
            new AddressingModeInfo(AddressingModes.Register,"yl"),
            new AddressingModeInfo(AddressingModes.Direct,"")
        };
        public static AddressingModeInfo[] aonly = {
            new AddressingModeInfo(AddressingModes.Register,"a")
        };
        public static AddressingModeInfo[] poponly = {
            new AddressingModeInfo(AddressingModes.Register,"a"),
            new AddressingModeInfo(AddressingModes.Register,"cc"),
            new AddressingModeInfo(AddressingModes.Direct,"")
        };
        public static AddressingModeInfo[] pushonly = {
            new AddressingModeInfo(AddressingModes.Immediate,""),
            new AddressingModeInfo(AddressingModes.Register,"a"),
            new AddressingModeInfo(AddressingModes.Register,"cc"),
            new AddressingModeInfo(AddressingModes.Direct,"")
        };
        public static AddressingModeInfo[] typical5 = {
            new AddressingModeInfo(AddressingModes.Direct,""),
            new AddressingModeInfo(AddressingModes.Indexed,"x"),
            new AddressingModeInfo(AddressingModes.Indexed,"y"),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"x"),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"y"),
            new AddressingModeInfo(AddressingModes.Indirect,""),
            new AddressingModeInfo(AddressingModes.IndirectIndexed,"x"),
            new AddressingModeInfo(AddressingModes.IndirectIndexed,"y")
        };
        public static AddressingModeInfo[] ldr8 = {
            new AddressingModeInfo(AddressingModes.Register,"a"),
            new AddressingModeInfo(AddressingModes.Register,"xl"),
            new AddressingModeInfo(AddressingModes.Register,"yl"),
            new AddressingModeInfo(AddressingModes.Register,"xh"),
            new AddressingModeInfo(AddressingModes.Register,"yh")
        };
        public static AddressingModeInfo[] ldr16 = {
            new AddressingModeInfo(AddressingModes.Register,"x"),
            new AddressingModeInfo(AddressingModes.Register,"y"),
            new AddressingModeInfo(AddressingModes.Register,"sp")
        };
        public static AddressingModeInfo[] ldfonly = {
            new AddressingModeInfo(AddressingModes.Direct,""),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"x"),
            new AddressingModeInfo(AddressingModes.DirectIndexed,"y"),
            new AddressingModeInfo(AddressingModes.Indirect,""),
            new AddressingModeInfo(AddressingModes.IndirectIndexed,"x"),
            new AddressingModeInfo(AddressingModes.IndirectIndexed,"y")
        };
        public static AddressingModeInfo[] directImmediate = {
            new AddressingModeInfo(AddressingModes.Immediate,""),
            new AddressingModeInfo(AddressingModes.Direct,"")
        };

        public AsmStm8()
        {
            String AddressingRecode(String a)
            {
                Match m = Regex.Match(a, @"^"+register+@"$"); if (m.Success) { return a; }
                m = Regex.Match(a, indirectindexedT); if (m.Success) {
                    return "([" + m.Groups[1].ToString().Replace("0x", "$") + ".w]," + m.Groups[2].ToString() + ")";
                }
                m = Regex.Match(a, indirectindexedF); if (m.Success) {
                    return "([" + m.Groups[1].ToString().Replace("0x", "$") + ".e]," + m.Groups[2].ToString() + ")";
                }
                m = Regex.Match(a, indirectT); if (m.Success) {
                    return "[" + m.Groups[1].ToString().Replace("0x", "$") + ".w]";
                }
                m = Regex.Match(a, indirectF); if (m.Success) {
                    return "[" + m.Groups[1].ToString().Replace("0x", "$") + ".e]";
                }
                m = Regex.Match(a, directindexed1T); if (m.Success) {
                    return "(" + m.Groups[1].ToString().Replace("0x", "$") + "," + m.Groups[2].ToString() + ")";
                }
                m = Regex.Match(a, directindexed2T); if (m.Success)
                {
                    return "(" + m.Groups[2].ToString().Replace("0x", "$") + "," + m.Groups[1].ToString() + ")";
                }
                m = Regex.Match(a, directbitT); if (m.Success) {
                    return m.Groups[1].ToString().Replace("0x", "$") + ",#" + m.Groups[2].ToString();
                }
                m = Regex.Match(a, indexedT); if (m.Success) {
                    return "(" + m.Groups[1].ToString() + ")";
                }
                m = Regex.Match(a, immediateT); if (m.Success)
                {
                    return '#' + m.Groups[1].ToString().Replace("0x", "$");
                }
                m = Regex.Match(a, directT); if (m.Success) {
                    return m.Groups[1].ToString().Replace("0x", "$");
                }
                Program.Error(fileName, lineNumber, "Bad addressing mode: " + a);
                return "";
            }
            AddressingModeInfo AdressingMode(String a)
            {
                Match m = Regex.Match(a, @"^" + register + @"$"); if (m.Success) return new AddressingModeInfo(AddressingModes.Register, m.Groups[1].ToString()); 
                m = Regex.Match(a, indirectindexedT); if (m.Success) return new AddressingModeInfo(AddressingModes.IndirectIndexed, m.Groups[2].ToString());
                m = Regex.Match(a, indirectindexedF); if (m.Success) return new AddressingModeInfo(AddressingModes.IndirectIndexed, m.Groups[2].ToString());
                m = Regex.Match(a, indirectT); if (m.Success) return new AddressingModeInfo(AddressingModes.Indirect, "");
                m = Regex.Match(a, indirectF); if (m.Success) return new AddressingModeInfo(AddressingModes.Indirect, "");
                m = Regex.Match(a, directindexed1T); if (m.Success) return new AddressingModeInfo(AddressingModes.DirectIndexed, m.Groups[2].ToString());
                m = Regex.Match(a, directindexed2T); if (m.Success) return new AddressingModeInfo(AddressingModes.DirectIndexed, m.Groups[1].ToString());
                m = Regex.Match(a, directbitT); if (m.Success) return new AddressingModeInfo(AddressingModes.DirectBit, "");
                m = Regex.Match(a, indexedT); if (m.Success) return new AddressingModeInfo(AddressingModes.Indexed, m.Groups[1].ToString());
                m = Regex.Match(a, directT); if (m.Success) return new AddressingModeInfo(AddressingModes.Direct, "");
                m = Regex.Match(a, immediateT); if (m.Success) return new AddressingModeInfo(AddressingModes.Immediate, "");
                Program.Error(fileName, lineNumber, "Bad addressing mode: " + a);
                return new AddressingModeInfo(AddressingModes.Unknown,"");
            }

            Boolean TestAddressingMode(String a, AddressingModeInfo[] availableModes)
            {
                AddressingModeInfo info = AdressingMode(a);
                for (Int32 i = 0; i < availableModes.Length; i++)
                {
                    if (availableModes[i].am == info.am && availableModes[i].r == info.r) { return true; }
                }
                Program.Error(fileName, lineNumber, "Unavailable addressing mode: "+a);
                return false;
            }

            void IfNeedChangeSegment(String region, Int32 at)
            {
                String a = "";
                if (at >= 0) a = " at "+at.ToString("X");
                switch (region)
                {
                    case "r":
                        if (Program.currentSegment != "regs" || a != "")
                        {
                            Program.currentSegment = "regs";
                            if (rfirst)
                            {
                                rfirst = false;
                                a = " at " + Lib.StrToInt(Program.defined["regstart"], fileName, lineNumber).ToString("X") +
                                    "-" + Lib.StrToInt(Program.defined["regend"], fileName, lineNumber).ToString("X");
                            }
                            Program.output.Write("regs\tsegment byte" + a + " 'ram0'\n");
                        }
                        break;
                    case "m":
                        if (Program.currentSegment != "mem" || a != "")
                        {
                            Program.currentSegment = "mem";
                            if (mfirst)
                            {
                                mfirst = false;
                                a = " at " + Lib.StrToInt(Program.defined["ramstart"], fileName, lineNumber).ToString("X") +
                                    "-" + Lib.StrToInt(Program.defined["ramend"], fileName, lineNumber).ToString("X");
                            }
                            Program.output.Write("mem\tsegment byte" + a + " 'ram1'\n");
                        }
                        break;
                    case "e":
                        if (Program.currentSegment != "eeprom" || a != "")
                        {
                            Program.currentSegment = "eeprom";
                            if (efirst)
                            {
                                efirst = false;
                                a = " at " + Lib.StrToInt(Program.defined["eepromstart"], fileName, lineNumber).ToString("X") +
                                    "-" + Lib.StrToInt(Program.defined["eepromend"], fileName, lineNumber).ToString("X");
                            }
                            Program.output.Write("eeprom\tsegment byte" + a + " 'eeprom'\n");
                        }
                        break;
                    case "u":
                        if (Program.currentSegment != "ports" || a != "")
                        {
                            Program.currentSegment = "ports";
                            Program.output.Write("ports\tsegment byte" + a + " 'ports'\n");
                        }
                        break;
                    case "f":
                        if (Program.currentSegment != "flash" || a != "")
                        {
                            Program.currentSegment = "flash";
                            if (ffirst)
                            {
                                ffirst = false;
                                a = " at " + Lib.StrToInt(Program.defined["flashstart"], fileName, lineNumber).ToString("X") +
                                    "-" + Lib.StrToInt(Program.defined["flashend"], fileName, lineNumber).ToString("X");
                            }
                            Program.output.Write("flash\tsegment byte" + a + " 'rom'\n");
                        }
                        break;
                    default:
                        Program.Error(fileName, lineNumber, "Wrong data place modificator: " + region + " (use: r,m,e,u,f only)");
                        break;
                }
            }

            String GenDataRecord(Int32 size, Int32 arrsize, String val)
            {
                switch(size)
                {
                    case 1: if (val == "") { if(arrsize > 1) return "ds.b "+arrsize; else return "ds.b"; } else { return "dc.b " + val; };
                    case 2: if (val == "") { if (arrsize > 1) return "ds.w " + arrsize; else return "ds.w"; } else { return "dc.w " + val; };
                    case 4: if (val == "") { if (arrsize > 1) return "ds.l " + arrsize; else return "ds.l"; } else { return "dc.l " + val; };
                    default:
                        Program.Error(fileName, lineNumber, "Wrong data size: " + size*8 + " (use: 8,16,32 only)");
                        return "";
                }
            }

            void InitializedFixedArrayLabel(Match m)
            {
                String name = m.Groups[1].ToString();
                Int32 address = Lib.StrToInt(m.Groups[2].ToString(), fileName, lineNumber);
                String region = m.Groups[3].ToString();
                Int32 len = Lib.StrToInt(m.Groups[4].ToString(), fileName, lineNumber) / 8;
                Int32 arrayLen = Lib.StrToInt(m.Groups[5].ToString(), fileName, lineNumber);
                String init = m.Groups[6].ToString();
                IfNeedChangeSegment(region,address);
                Program.output.Write( name + "\t" + GenDataRecord(len, arrayLen, init.Replace("0x", "$")) + "\n");
            }
            void InitializedFixedDataLabel(Match m)
            {
                String name = m.Groups[1].ToString();
                Int32 address = Lib.StrToInt(m.Groups[2].ToString(), fileName, lineNumber);
                String region = m.Groups[3].ToString();
                Int32 len = Lib.StrToInt(m.Groups[4].ToString(), fileName, lineNumber) / 8;
                String init = m.Groups[5].ToString();
                IfNeedChangeSegment(region,address);
                Program.output.Write( name + "\t" + GenDataRecord(len,1,init.Replace("0x", "$")) + "\n");
            }
            void FixedArrayLabel(Match m)
            {
                String name = m.Groups[1].ToString();
                Int32 address = Lib.StrToInt(m.Groups[2].ToString(), fileName, lineNumber);
                String region = m.Groups[3].ToString();
                Int32 len = Lib.StrToInt(m.Groups[4].ToString(), fileName, lineNumber) / 8;
                Int32 arrayLen = Lib.StrToInt(m.Groups[5].ToString(), fileName, lineNumber);
                IfNeedChangeSegment(region,address);
                Program.output.Write(name + "\t" + GenDataRecord(len, arrayLen, "") + "\n");
            }
            void FixedDataLabel(Match m)
            {
                String name = m.Groups[1].ToString();
                Int32 address = Lib.StrToInt(m.Groups[2].ToString(), fileName, lineNumber);
                String region = m.Groups[3].ToString();
                Int32 len = Lib.StrToInt(m.Groups[4].ToString(), fileName, lineNumber) / 8;
                IfNeedChangeSegment(region,address);
                Program.output.Write( name + "\t" + GenDataRecord(len,1,"") + "\n");
            }
            void InitializedArrayLabel(Match m)
            {
                String name = m.Groups[1].ToString();
                String region = m.Groups[2].ToString();
                Int32 len = Lib.StrToInt(m.Groups[3].ToString(), fileName, lineNumber) / 8;
                Int32 arrayLen = Lib.StrToInt(m.Groups[4].ToString(), fileName, lineNumber);
                String init = m.Groups[5].ToString();
                IfNeedChangeSegment(region,-1);
                Program.output.Write(name + "\t" + GenDataRecord(len, arrayLen, init.Replace("0x", "$")) + "\n");
            }
            void InitializedDataLabel(Match m)
            {
                String name = m.Groups[1].ToString();
                String region = m.Groups[2].ToString();
                Int32 len = Lib.StrToInt(m.Groups[3].ToString(), fileName, lineNumber) / 8;
                String init = m.Groups[4].ToString();
                IfNeedChangeSegment(region,-1);
                Program.output.Write(name+"\t" + GenDataRecord(len,1,init.Replace("0x", "$")) + "\n");
            }
            void SimpleArrayLabel(Match m)
            {
                String name = m.Groups[1].ToString();
                String region = m.Groups[2].ToString();
                Int32 len = Lib.StrToInt(m.Groups[3].ToString(), fileName, lineNumber) / 8;
                Int32 arrayLen = Lib.StrToInt(m.Groups[4].ToString(), fileName, lineNumber);
                IfNeedChangeSegment(region,-1);
                Program.output.Write(name + "\t" + GenDataRecord(len, arrayLen, "") + "\n");
            }
            void SimpleDataLabel(Match m)
            {
                String name = m.Groups[1].ToString();
                String region = m.Groups[2].ToString();
                Int32 len = Lib.StrToInt(m.Groups[3].ToString(), fileName, lineNumber) / 8;
                IfNeedChangeSegment(region,-1);
                Program.output.Write(name+"\t" + GenDataRecord(len,1,"") + "\n");
            }
            void InitializedArrayWithoutLabel(Match m)
            {
                String region = m.Groups[1].ToString();
                Int32 len = Lib.StrToInt(m.Groups[2].ToString(), fileName, lineNumber) / 8;
                Int32 arrayLen = Lib.StrToInt(m.Groups[3].ToString(), fileName, lineNumber);
                String init = m.Groups[4].ToString();
                IfNeedChangeSegment(region,-1);
                Program.output.Write("\t" + GenDataRecord(len, arrayLen, init.Replace("0x", "$")) + "\n");
            }
            void InitializedDataWithoutLabel(Match m)
            {
                String region = m.Groups[1].ToString();
                Int32 len = Lib.StrToInt(m.Groups[2].ToString(), fileName, lineNumber) / 8;
                String init = m.Groups[3].ToString();
                IfNeedChangeSegment(region,-1);
                Program.output.Write("\t" + GenDataRecord(len,1,init.Replace("0x", "$")) + "\n");
            }
            void SimpleArrayWithoutLabel(Match m)
            {
                String region = m.Groups[1].ToString();
                Int32 len = Lib.StrToInt(m.Groups[2].ToString(), fileName, lineNumber) / 8;
                Int32 arrayLen = Lib.StrToInt(m.Groups[3].ToString(), fileName, lineNumber);
                IfNeedChangeSegment(region,-1);
                Program.output.Write("\t" + GenDataRecord(len, arrayLen, "") + "\n");
            }
            void SimpleDataWithoutLabel(Match m)
            {
                String region = m.Groups[1].ToString();
                Int32 len = Lib.StrToInt(m.Groups[2].ToString(), fileName, lineNumber) / 8;
                IfNeedChangeSegment(region,-1);
                Program.output.Write("\t"+GenDataRecord(len,1,"") + "\n");
            }
            void FixedCodeLabel(Match m)
            {
                String name = m.Groups[1].ToString();
                Int32 address = Lib.StrToInt(m.Groups[2].ToString(), fileName, lineNumber);
                IfNeedChangeSegment("f",address);
                Program.output.Write( name + "\n");
            }
            void FixedCodeLabelWithCode(Match m)
            {
                String name = m.Groups[1].ToString();
                Int32 address = Lib.StrToInt(m.Groups[2].ToString(), fileName, lineNumber);
                IfNeedChangeSegment("f",address);
                Program.output.Write( name + "\n");
                SearchCode(m.Groups[3].ToString());
            }
            void SimpleCodeLabel(Match m)
            {
                String name = m.Groups[1].ToString();
                IfNeedChangeSegment("f",-1);
                Program.output.Write(name + "\n");
            }
            void SimpleCodeLabelWithCode(Match m)
            {
                String name = m.Groups[1].ToString();
                IfNeedChangeSegment("f",-1);
                Program.output.Write(name + "\n");
                SearchCode(m.Groups[2].ToString());
            }
            void CodeOnly(Match m)
            {
                 SearchCode(m.Groups[1].ToString());
            }

            dataSearch.Add(new Labels(@"^(" + ident + @")@(" + number + @"):\((\w)(\d{1,2})\)\[([\dx]+)\](" + any + @")$", InitializedFixedArrayLabel));
            dataSearch.Add(new Labels(@"^(" + ident + @")@(" + number + @"):\((\w)(\d{1,2})\)(" + any + @")$", InitializedFixedDataLabel));
            dataSearch.Add(new Labels(@"^(" + ident + @")@(" + number + @"):\((\w)(\d{1,2})\)\[([\dx]+)\]$", FixedArrayLabel));
            dataSearch.Add(new Labels(@"^(" + ident + @")@(" + number + @"):\((\w)(\d{1,2})\)$", FixedDataLabel));      
            dataSearch.Add(new Labels(@"^(" + ident + @"):\((\w)(\d{1,2})\)\[([\dx]+)\]$", SimpleArrayLabel));
            dataSearch.Add(new Labels(@"^(" + ident + @"):\((\w)(\d{1,2})\)\[([\dx]+)\](" + any + @")$", InitializedArrayLabel));
            dataSearch.Add(new Labels(@"^(" + ident + @"):\((\w)(\d{1,2})\)(" + any + @")$", InitializedDataLabel));           
            dataSearch.Add(new Labels(@"^(" + ident + @"):\((\w)(\d{1,2})\)$", SimpleDataLabel));
            dataSearch.Add(new Labels(@"^\((\w)(\d{1,2})\)\[([\dx]+)\]$", SimpleArrayWithoutLabel));
            dataSearch.Add(new Labels(@"^\((\w)(\d{1,2})\)\[([\dx]+)\](" + any + @")$", InitializedArrayWithoutLabel));
            dataSearch.Add(new Labels(@"^\((\w)(\d{1,2})\)(" + any + @")$", InitializedDataWithoutLabel));
            dataSearch.Add(new Labels(@"^\((\w)(\d{1,2})\)$", SimpleDataWithoutLabel));
            dataSearch.Add(new Labels(@"^(" + ident + @")@(" + number + @"):$", FixedCodeLabel));
            dataSearch.Add(new Labels(@"^(" + ident + @")@(" + number + @"):(" + any + @")$", FixedCodeLabelWithCode));
            dataSearch.Add(new Labels(@"^(" + ident + @"):$", SimpleCodeLabel));
            dataSearch.Add(new Labels(@"^(" + ident + @"):(" + any + @")$", SimpleCodeLabelWithCode));
            dataSearch.Add(new Labels(@"^(" + any + @")$", CodeOnly));

            void Divide16(Match m)
            {
                IfNeedChangeSegment("f",-1);
                Program.output.Write("\tdivw x,y\t\t; "+ m.Groups[0].ToString() + " in "+fileName+" : "+lineNumber+"\n");
            }
            void Ret16(Match m)
            {
                IfNeedChangeSegment("f",-1);
                Program.output.Write("\tret\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
            }
            void Ret24(Match m)
            {
                IfNeedChangeSegment("f",-1);
                Program.output.Write("\tretf\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
            }
            void Dbg(Match m)
            {
                IfNeedChangeSegment("f",-1);
                Program.output.Write("\tbreak\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
            }
            void Nop(Match m)
            {
                IfNeedChangeSegment("f",-1);
                Program.output.Write("\tnop\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
            }
            void Halt(Match m)
            {
                IfNeedChangeSegment("f",-1);
                Program.output.Write("\thalt\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
            }
            void Trap(Match m)
            {
                IfNeedChangeSegment("f",-1);
                Program.output.Write("\ttrap\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
            }
            void Iret(Match m)
            {
                IfNeedChangeSegment("f",-1);
                Program.output.Write("\tiret\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
            }
            void Wait(Match m)
            {
                IfNeedChangeSegment("f",-1);
                Program.output.Write("\twfe\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
            }
            void Waiti(Match m)
            {
                IfNeedChangeSegment("f",-1);
                Program.output.Write("\twfi\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
            }
            void AdcOp(Match m)
            {
                if (TestAddressingMode( m.Groups[1].ToString(), typical1))
                {
                    IfNeedChangeSegment("f", -1);
                    Program.output.Write("\tadc a," + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void SbcOp(Match m)
            {
                if (TestAddressingMode(m.Groups[1].ToString(), typical1))
                {
                    IfNeedChangeSegment("f", -1);
                    Program.output.Write("\tadc a," + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void AddOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                switch(m.Groups[1].ToString())
                {
                    case "a":
                        if (TestAddressingMode(m.Groups[2].ToString(), typical1))
                        {
                            Program.output.Write("\tadd a," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[2].ToString(), typical2))
                        {
                            Program.output.Write("\taddw " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    case "sp":
                        if (TestAddressingMode(m.Groups[2].ToString(),  immediateOnly ))
                        {
                            Program.output.Write("\taddw " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default: break;
                }
            }
            void SubOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                switch (m.Groups[1].ToString())
                {
                    case "a":
                        if (TestAddressingMode(m.Groups[2].ToString(), typical1))
                        {
                            Program.output.Write("\tsub a," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[2].ToString(), typical2))
                        {
                            Program.output.Write("\tsubw " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    case "sp":
                        if (TestAddressingMode(m.Groups[2].ToString(), immediateOnly))
                        {
                            Program.output.Write("\tsubw " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default: break;
                }
            }
            void AndOp(Match m)
            {
                if (TestAddressingMode(m.Groups[1].ToString(), typical1))
                {
                    IfNeedChangeSegment("f", -1);
                    Program.output.Write("\tand a," + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void OrOp(Match m)
            {
                if (TestAddressingMode(m.Groups[1].ToString(), typical1))
                {
                    IfNeedChangeSegment("f", -1);
                    Program.output.Write("\tor a," + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void XorOp(Match m)
            {
                if (TestAddressingMode(m.Groups[1].ToString(), typical1))
                {
                    IfNeedChangeSegment("f", -1);
                    Program.output.Write("\txor a," + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void DecOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                switch (m.Groups[1].ToString())
                {
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                        {
                            Program.output.Write("\tdecw " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if (TestAddressingMode(m.Groups[1].ToString(), typical3))
                        {
                            Program.output.Write("\tdec " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                }
            }
            void IncOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                switch (m.Groups[1].ToString())
                {
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                        {
                            Program.output.Write("\tincw " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if (TestAddressingMode(m.Groups[1].ToString(), typical3))
                        {
                            Program.output.Write("\tinc " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                }
            }
            void NegOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                switch (m.Groups[1].ToString())
                {
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                        {
                            Program.output.Write("\tnegw " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if (TestAddressingMode(m.Groups[1].ToString(), typical3))
                        {
                            Program.output.Write("\tneg " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                }
            }
            void MulOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                Program.output.Write("\tmul " + AddressingRecode(m.Groups[1].ToString()) + ",a \t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
            }
            void DivOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                Program.output.Write("\tdiv " + AddressingRecode(m.Groups[1].ToString()) + ",a \t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
            }
            void CpOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                switch (m.Groups[1].ToString())
                {
                    case "x":
                        if (TestAddressingMode(m.Groups[2].ToString(), typical4x))
                        {
                            Program.output.Write("\tcpw " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    case "y":
                        if (TestAddressingMode(m.Groups[2].ToString(), typical4y))
                        {
                            Program.output.Write("\tcpw " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if (TestAddressingMode(m.Groups[2].ToString(), typical1))
                        {
                            Program.output.Write("\tcp a," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                }
            }
            void TnzOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                switch (m.Groups[1].ToString())
                {
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                        {
                            Program.output.Write("\ttnzw " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if (TestAddressingMode(m.Groups[1].ToString(), typical3))
                        {
                            Program.output.Write("\ttnz " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                }
            }
            void BcpOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                if (TestAddressingMode(m.Groups[1].ToString(), typical1))
                {
                    Program.output.Write("\tbcp a," + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ClrOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                switch (m.Groups[1].ToString())
                {
                    case "i":
                        Program.output.Write("\trim\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        break;
                    case "c":
                        Program.output.Write("\trcf\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        break;
                    case "v":
                        Program.output.Write("\trvf\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        break;
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                        {
                            Program.output.Write("\tclrw " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if (m.Groups[1].ToString().IndexOf('#') >= 0)
                        {
                            if (TestAddressingMode(m.Groups[1].ToString(), bitonly))
                            {
                                Program.output.Write("\tbres " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                            }
                        }
                        else
                        {
                            if (TestAddressingMode(m.Groups[1].ToString(), typical3))
                            {
                                Program.output.Write("\tclr " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                            }
                        }
                        break;
                }
            }
            void SetOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                switch (m.Groups[1].ToString())
                {
                    case "i":
                        Program.output.Write("\tsim\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        break;
                    case "c":
                        Program.output.Write("\tscf\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        break;
                    default:
                        if (m.Groups[1].ToString().IndexOf('#') >= 0)
                        {
                            if (TestAddressingMode(m.Groups[1].ToString(), bitonly))
                            {
                                Program.output.Write("\tbset " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                            }
                        } else
                        {
                            switch(m.Groups[1].ToString())
                            {
                                case "a":
                                    Program.output.Write("\tld a,#1\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                                    break;
                                case "x":
                                case "y":
                                    Program.output.Write("\tld "+ m.Groups[1].ToString() + ",#1\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                                    break;
                                default:
                                    if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                                    {
                                        Program.output.Write("\tmov " + AddressingRecode(m.Groups[1].ToString()) + ",#1\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                                    }
                                    break;
                            }
                        }
                        break;
                }
            }
            void CplOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                switch (m.Groups[1].ToString())
                {
                    case "c":
                        Program.output.Write("\tccf\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        break;
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                        {
                            Program.output.Write("\tcplw " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if(m.Groups[1].ToString().IndexOf('#')>=0)
                        {
                            if (TestAddressingMode(m.Groups[1].ToString(), bitonly))
                            {
                                Program.output.Write("\tbcpl " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                            }
                        } else
                        {
                            if (TestAddressingMode(m.Groups[1].ToString(), typical3))
                            {
                                Program.output.Write("\tcpl " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                            }
                        }
                        break;
                }
            }
            void XcgOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                switch (m.Groups[1].ToString())
                {
                    case "x": if (m.Groups[2].ToString() == "y")
                        {
                            Program.output.Write("\texgw x,y\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    case "a":
                        if (TestAddressingMode(m.Groups[1].ToString(), exgonly))
                        {
                            Program.output.Write("\texg a," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default: break;
                }
            }
            void SwpOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                switch (m.Groups[1].ToString())
                {
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                        {
                            Program.output.Write("\tswapw " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if (TestAddressingMode(m.Groups[1].ToString(), typical3))
                        {
                            Program.output.Write("\tswap " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                }
            }
            void PopOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                switch (m.Groups[1].ToString())
                {
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                        {
                            Program.output.Write("\tpopw " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if (TestAddressingMode(m.Groups[1].ToString(), poponly))
                        {
                            Program.output.Write("\tpop " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                }
            }
            void PshOp(Match m)
            {
                IfNeedChangeSegment("f",-1);
                switch (m.Groups[1].ToString())
                {
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                        {
                            Program.output.Write("\tpushw " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if (TestAddressingMode(m.Groups[1].ToString(), pushonly))
                        {
                            Program.output.Write("\tpush " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                }
            }
            void RlcOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                switch (m.Groups[1].ToString())
                {
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                        {
                            Program.output.Write("\trlcw " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if (TestAddressingMode(m.Groups[1].ToString(), typical3))
                        {
                            Program.output.Write("\trlc " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                }
            }
            void RrcOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                switch (m.Groups[1].ToString())
                {
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                        {
                            Program.output.Write("\trrcw " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if (TestAddressingMode(m.Groups[1].ToString(), typical3))
                        {
                            Program.output.Write("\trrc " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                }
            }
            void RlwaOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                {
                    Program.output.Write("\trlwa " + AddressingRecode(m.Groups[1].ToString()) + ",a\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void RrwaOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                {
                    Program.output.Write("\trrwa " + AddressingRecode(m.Groups[1].ToString()) + ",a\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void SllOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                switch (m.Groups[1].ToString())
                {
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                        {
                            Program.output.Write("\tsllw " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if (TestAddressingMode(m.Groups[1].ToString(), typical3))
                        {
                            Program.output.Write("\tsll " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                }
            }
            void SraOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                switch (m.Groups[1].ToString())
                {
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                        {
                            Program.output.Write("\tsraw " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if (TestAddressingMode(m.Groups[1].ToString(), typical3))
                        {
                            Program.output.Write("\tsra " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                }
            }
            void SrlOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                switch (m.Groups[1].ToString())
                {
                    case "x":
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), xyonly))
                        {
                            Program.output.Write("\tsrlw " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        if (TestAddressingMode(m.Groups[1].ToString(), typical3))
                        {
                            Program.output.Write("\tsrl " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                }
            }
            void GonearOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjra " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void GofarOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directIndirectOnly))
                {
                    Program.output.Write("\tjpf " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void GoOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), typical5))
                {
                    Program.output.Write("\tjp " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void CallnearOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tcallr " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void CallfarOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directIndirectOnly))
                {
                    Program.output.Write("\tcallf " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void CallOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), typical5))
                {
                    Program.output.Write("\tcall " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifnotzOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrne " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifzOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjreq " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifnotcOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrnc " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifcOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrc " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifnothOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrnh " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifhOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrh " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifnotvOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrnv " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifvOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrv " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifnotiOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrnm " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifiOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrm " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifnotnOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrpl " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifnOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrmi " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifnotintOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjril " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifintOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrih " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void iffalseOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrf " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void iftrueOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrt " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifgesOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrsge " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void iflesOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrsle " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifgtsOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrsgt " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifltsOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrslt " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifgeuOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjruge " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifleuOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrule " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifgtuOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrugt " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifltuOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly))
                {
                    Program.output.Write("\tjrult " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifbtjfOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), bitonly))
                {
                    Program.output.Write("\tbtjf " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString().Replace("0x", "$")) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ifbtjtOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), bitonly))
                {
                    Program.output.Write("\tbtjt " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString().Replace("0x", "$")) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void BccmOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), bitonly))
                {
                    Program.output.Write("\bccm " + AddressingRecode(m.Groups[1].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void Regs8Op(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), ldr8) && TestAddressingMode(m.Groups[2].ToString(), ldr8))
                {
                    Program.output.Write("\tld " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void Regs16Op(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), ldr16) && TestAddressingMode(m.Groups[2].ToString(), ldr16))
                {
                    Program.output.Write("\tldw " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }
            void ToReg8Op(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (m.Groups[2].ToString().IndexOf("}") >= 0)
                {
                    if (TestAddressingMode(m.Groups[1].ToString(), aonly) && TestAddressingMode(m.Groups[2].ToString(), ldfonly))
                    {
                        Program.output.Write("\tldf " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                    }
                }
                else
                {
                    if (TestAddressingMode(m.Groups[1].ToString(), aonly) && TestAddressingMode(m.Groups[2].ToString(), typical3))
                    {
                        Program.output.Write("\tld " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                    }
                }
            }
            void ToReg16Op(Match m)
            {
                IfNeedChangeSegment("f", -1);
                switch (m.Groups[1].ToString())
                {
                    case "x":
                        if (TestAddressingMode(m.Groups[2].ToString(), typical4y))
                        {
                            Program.output.Write("\tldw " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    case "y":
                        if (TestAddressingMode(m.Groups[2].ToString(), typical4x))
                        {
                            Program.output.Write("\tldw " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        Program.Error(fileName, lineNumber, "You can use only x or y for destination when source not register");
                        break;
                }
            }
            void FromReg8Op(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (m.Groups[1].ToString().IndexOf("}") >= 0)
                {
                    if (TestAddressingMode(m.Groups[2].ToString(), aonly) && TestAddressingMode(m.Groups[1].ToString(), ldfonly))
                    {
                        Program.output.Write("\tldf " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                    }
                }
                else
                {
                    if (TestAddressingMode(m.Groups[2].ToString(), aonly) && TestAddressingMode(m.Groups[1].ToString(), typical3))
                    {
                        Program.output.Write("\tld " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                    }
                }
            }
            void FromReg16Op(Match m)
            {
                IfNeedChangeSegment("f", -1);
                switch (m.Groups[2].ToString())
                {
                    case "x":
                        if (TestAddressingMode(m.Groups[1].ToString(), typical4x))
                        {
                            Program.output.Write("\tldw " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    case "y":
                        if (TestAddressingMode(m.Groups[1].ToString(), typical4y))
                        {
                            Program.output.Write("\tldw " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                        }
                        break;
                    default:
                        Program.Error(fileName, lineNumber, "You can use only x or y for source when destination not register");
                        break;
                }
            }
            void MovOp(Match m)
            {
                IfNeedChangeSegment("f", -1);
                if (TestAddressingMode(m.Groups[1].ToString(), directOnly) && TestAddressingMode(m.Groups[2].ToString(), directImmediate))
                {
                    Program.output.Write("\tmov " + AddressingRecode(m.Groups[1].ToString()) + "," + AddressingRecode(m.Groups[2].ToString()) + "\t\t; " + m.Groups[0].ToString() + " in " + fileName + " : " + lineNumber + "\n");
                }
            }

            codeSearch.Add(new Codes(@"^x\/\%y$", Divide16));
            codeSearch.Add(new Codes(@"^ret$", Ret16));
            codeSearch.Add(new Codes(@"^retf$", Ret24));
            codeSearch.Add(new Codes(@"^dbg$", Dbg));
            codeSearch.Add(new Codes(@"^nop$", Nop));
            codeSearch.Add(new Codes(@"^halt$", Halt));
            codeSearch.Add(new Codes(@"^trap$", Trap));
            codeSearch.Add(new Codes(@"^iret$", Iret));
            codeSearch.Add(new Codes(@"^wait$", Wait));
            codeSearch.Add(new Codes(@"^waiti$", Waiti));
            codeSearch.Add(new Codes(@"^a\+\=c\+(.+)$", AdcOp));
            codeSearch.Add(new Codes(@"^a\-\=c\+(.+)$", SbcOp));
            codeSearch.Add(new Codes(@"^" + axysp + @"\+\=(.+)$", AddOp));
            codeSearch.Add(new Codes(@"^" + axysp + @"\-\=(.+)$", SubOp));
            codeSearch.Add(new Codes(@"^a\&\=(.+)$", AndOp));
            codeSearch.Add(new Codes(@"^a\|\=(.+)$", OrOp));
            codeSearch.Add(new Codes(@"^a\^\=(.+)$", XorOp));
            codeSearch.Add(new Codes(@"^\-\-(.+)$", DecOp));
            codeSearch.Add(new Codes(@"^(.+)\-\-$", DecOp));
            codeSearch.Add(new Codes(@"^\+\+(.+)$", IncOp));
            codeSearch.Add(new Codes(@"^(.+)\+\+$", IncOp));
            codeSearch.Add(new Codes(@"^" + xy + @"\*\=a$", MulOp));
            codeSearch.Add(new Codes(@"^" + xy + @"\/\=a$", DivOp));
            codeSearch.Add(new Codes(@"^" + axy + @"\?(.+)$", CpOp));
            codeSearch.Add(new Codes(@"^a\&\?(.+)$", BcpOp));
            codeSearch.Add(new Codes(@"^(.+)\=#0$", ClrOp));
            codeSearch.Add(new Codes(@"^(.+)\=#1$", SetOp));
            codeSearch.Add(new Codes(@"^"+ax+@"\<\-\>(.+)$", XcgOp));
            codeSearch.Add(new Codes(@"^swap(.+)$", SwpOp));
            codeSearch.Add(new Codes(@"^pop(.+)$", PopOp));
            codeSearch.Add(new Codes(@"^push(.+)$", PshOp));
            codeSearch.Add(new Codes(@"^c<<c(.+)$", RlcOp));
            codeSearch.Add(new Codes(@"^a<<a(" + xy + ")$", RlwaOp));
            codeSearch.Add(new Codes(@"^c>>c(.+)$", RrcOp));
            codeSearch.Add(new Codes(@"^a>>a(" + xy + ")$", RrwaOp));
            codeSearch.Add(new Codes(@"^c<<0(.+)$", SllOp));
            codeSearch.Add(new Codes(@"^s>>c(.+)$", SraOp));
            codeSearch.Add(new Codes(@"^0>>c(.+)$", SrlOp));
            codeSearch.Add(new Codes(@"^gonear(.+)$", GonearOp));
            codeSearch.Add(new Codes(@"^gofar(.+)$", GofarOp));
            codeSearch.Add(new Codes(@"^go(.+)$", GoOp));
            codeSearch.Add(new Codes(@"^callnear(.+)$", CallnearOp));
            codeSearch.Add(new Codes(@"^callfar(.+)$", CallfarOp));
            codeSearch.Add(new Codes(@"^call(.+)$", CallOp));
            codeSearch.Add(new Codes(@"^ifz==0(.+)$", ifnotzOp));
            codeSearch.Add(new Codes(@"^ifz==1(.+)$", ifzOp));
            codeSearch.Add(new Codes(@"^ifc==0(.+)$", ifnotcOp));
            codeSearch.Add(new Codes(@"^ifc==1(.+)$", ifcOp));
            codeSearch.Add(new Codes(@"^ifh==0(.+)$", ifnothOp));
            codeSearch.Add(new Codes(@"^ifh==1(.+)$", ifhOp));
            codeSearch.Add(new Codes(@"^ifv==0(.+)$", ifnotvOp));
            codeSearch.Add(new Codes(@"^ifv==1(.+)$", ifvOp));
            codeSearch.Add(new Codes(@"^ifi==0(.+)$", ifnotiOp));
            codeSearch.Add(new Codes(@"^ifi==1(.+)$", ifiOp));
            codeSearch.Add(new Codes(@"^ifn==0(.+)$", ifnotnOp));
            codeSearch.Add(new Codes(@"^ifn==1(.+)$", ifnOp));
            codeSearch.Add(new Codes(@"^ifint==0(.+)$", ifnotintOp));
            codeSearch.Add(new Codes(@"^ifint==1(.+)$", ifintOp));
            codeSearch.Add(new Codes(@"^iffalse(.+)$", iffalseOp));
            codeSearch.Add(new Codes(@"^iftrue(.+)$", iftrueOp));
            codeSearch.Add(new Codes(@"^if<0(.+)$", ifnOp));
            codeSearch.Add(new Codes(@"^if>=0(.+)$", ifnotnOp));
            codeSearch.Add(new Codes(@"^if<>0(.+)$", ifnotzOp));
            codeSearch.Add(new Codes(@"^if!=0(.+)$", ifnotzOp));
            codeSearch.Add(new Codes(@"^if>=s(.+)$", ifgesOp));
            codeSearch.Add(new Codes(@"^if<=s(.+)$", iflesOp));
            codeSearch.Add(new Codes(@"^if>s(.+)$", ifgtsOp));
            codeSearch.Add(new Codes(@"^if<s(.+)$", ifltsOp));
            codeSearch.Add(new Codes(@"^if>=u(.+)$", ifgeuOp));
            codeSearch.Add(new Codes(@"^if<=u(.+)$", ifleuOp));
            codeSearch.Add(new Codes(@"^if>u(.+)$", ifgtuOp));
            codeSearch.Add(new Codes(@"^if<u(.+)$", ifltuOp));
            codeSearch.Add(new Codes(@"^if(.+\#\d)==0(.+)$", ifbtjfOp));
            codeSearch.Add(new Codes(@"^if(.+\#\d)==1(.+)$", ifbtjtOp));
            codeSearch.Add(new Codes(@"^!(.+)$", CplOp));
            codeSearch.Add(new Codes(@"^\?(.+)$", TnzOp));
            codeSearch.Add(new Codes(@"^\-(.+)$", NegOp));
            codeSearch.Add(new Codes(@"^(.+)\=c$", BccmOp));
            codeSearch.Add(new Codes(@"^" + register8 + @"\=" + register8 + @"$", Regs8Op));
            codeSearch.Add(new Codes(@"^" + register16 + @"\=" + register16 + @"$", Regs16Op));
            codeSearch.Add(new Codes(@"^" + register8 + @"\=(.+)$", ToReg8Op));
            codeSearch.Add(new Codes(@"^" + register16 + @"\=(.+)$", ToReg16Op));
            codeSearch.Add(new Codes(@"^(.+)\=" + register8 + @"$", FromReg8Op));
            codeSearch.Add(new Codes(@"^(.+)\=" + register16 + @"$", FromReg16Op));
            codeSearch.Add(new Codes(@"^(.+)\=(.+)$", MovOp));

        }

        public void Do(String line, long l, String name)
        {
            fileName = name;
            lineNumber = l;
            SearchDataAndLabels(line);
        }

        void SearchDataAndLabels(String line)
        {
            Boolean isdone = false;
            dataSearch.ForEach(delegate (Labels item)
            {
                if (!isdone)
                {
                    Match res = Regex.Match(line, item.searchTemplate, RegexOptions.IgnoreCase);
                    if (res.Success)
                    {
                        item.doIt(res);
                        isdone = true;
                    }
                }
            });
            if (isdone == false) { Program.Error(fileName, lineNumber, "Unrecognised data definition: " + line); }
        }

        void SearchCode(String line)
        {
            Boolean isdone = false;
            codeSearch.ForEach(delegate (Codes item)
            {
                if (!isdone)
                {
                    Match res = Regex.Match(line, item.searchTemplate, RegexOptions.IgnoreCase);
                    if (res.Success)
                    {
                        item.doIt(res);
                        isdone = true;
                    }
                }
            });
            if (isdone == false) { Program.Error(fileName,lineNumber,"Unrecognised command: "+ line); }
        }
    }
}

/*

=

int 

*/


/*
bccm

*/