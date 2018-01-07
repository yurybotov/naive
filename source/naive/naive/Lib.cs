using System;
using System.Text.RegularExpressions;

namespace naive
{
    public static class Lib
    {
        // преобразует десятичные или 16-ричные числа и символы из строки в число
        public static Int32 StrToInt(String s, String fileName, long lineNumber)
        {
            Int32 n = 0;
            if (s.IndexOf(',') >= 0) // это байтовая последовательность
            {
                String[] a = s.Split(',');
                if (a.Length > 4) { Program.Error(fileName, lineNumber, "too long initialisation string"); return 0; }
                for (int i = 0; i < a.Length; i++)
                {
                    n *= 256;
                    n += StrToInt(a[i].Trim(),fileName,lineNumber);
                }
                return n;
            }
            else
            {
                if (s[0] == '\'' && s[s.Length] == '\'') // это строка?
                {
                    String c = s.Substring(1, s.Length - 2);
                    
                    if (c.Length > 4) { Program.Error(fileName,lineNumber,"too long initialisation string"); return 0; }
                    for (int i = 0; i < c.Length; i++)
                    {
                        n *= 256;
                        n += c[i];
                    }
                    return n;
                }
                else
                {
                    if (s.Length > 2 && s[0] == '0' && s[1] == 'x') // это HEX?
                    {
                        n = Int32.Parse(s.Substring(2), System.Globalization.NumberStyles.HexNumber);
                        return n;
                    }
                    else
                    {
                        // это десятичное
                        Match m = Regex.Match(s, @"^\d+$");
                        if (m.Success)
                        {
                            n = Int32.Parse(s);
                            return n;
                        }

                        // TODO это метка
                        return 0;
                    }
                }
            }
        }

        // преобразует целое число в массив байт
        public static byte[] IntToChars(Int32 i, Int32 len, String fileName, long lineNumber)
        {
            if (i > 0xff && len == 1) Program.Error(fileName,lineNumber,"Cant pack "+i+" to 1 byte");
            if (i > 0xffff && len == 2) Program.Error(fileName, lineNumber, "Cant pack " + i + " to 2 byte");
            byte[] c = null;
            byte c0 = (byte)(i & 0xFF);
            if (len == 1) { c = new byte[1]; c[0] = c0; return c; }
            byte c1 = (byte)((i >> 8) & 0xFF);
            if (len == 2) { c = new byte[2]; c[0] = c0; c[1] = c1; return c; }
            byte c2 = (byte)((i >> 16) & 0xFF);
            byte c3 = (byte)((i >> 24) & 0xFF);
            if (len == 4) { c = new byte[4]; c[0] = c0; c[1] = c1; c[2] = c2; c[3] = c3; return c; }
            return c;
        }

        // преобразует строку параметров инициализации массива в последовательность байтов
        public static byte[] InitStringToChars(String s, Int32 len, Int32 arrLen, String fileName, long lineNumber)
        {
            Int32 fullLen = len * arrLen;
            byte[] b = new byte[fullLen];
            Int32 pos = 0;

            // инициализация массива может быть 2х видов: как строка 'как строка' возможно со вставками через запятую символов если len == 1 
            // или через запятую 0x10,'a',23,23,0x20 где каждый из параметров будет паковаться ровно в один элемент массива

            if (len == 1)
            {
                if (s.IndexOf(',') >= 0)
                {
                    String[] a = s.Split(',');
                    for (Int32 i = 0; i < a.Length; i++)
                    {
                        String x = a[i].Trim();
                        if (x[0] == '\'' && x[x.Length-1] == '\'')
                        {
                            String cutted = x.Substring(1, x.Length - 2);
                            for(Int32 j = 0; j < cutted.Length; j++)
                            {
                                b[pos++] = (byte)cutted[j];
                            }
                        }
                        else
                        {
                            byte[] sub = IntToChars(StrToInt(x, fileName, lineNumber), len, fileName, lineNumber);
                            b[pos++] = sub[0];
                        }
                    }
                } else
                {
                    String x = s.Trim();
                    if (x[0] == '\'' && x[x.Length-1] == '\'')
                    {
                        String cutted = x.Substring(1, x.Length - 2);
                        for (Int32 j = 0; j < cutted.Length; j++)
                        {
                            b[pos++] = (byte)cutted[j];
                        }
                    } else
                    {
                        Program.Error(fileName, lineNumber, "bad array initialisation string"); return b;
                    }
                }
            } else
            {
                if (s.IndexOf(',') >= 0)
                {
                    String[] a = s.Split(',');
                    if(a.Length == arrLen)
                    {
                        for (Int32 i = 0; i < a.Length; i++) {
                            byte[] sub = IntToChars(StrToInt(a[i],fileName,lineNumber),len,fileName,lineNumber);
                            switch(len)
                            {
                                case 2:
                                    b[pos++] = sub[1];
                                    b[pos++] = sub[0];
                                    break;
                                case 4:
                                    b[pos++] = sub[3];
                                    b[pos++] = sub[2];
                                    b[pos++] = sub[1];
                                    b[pos++] = sub[0];
                                    break;
                                default:
                                    Program.Error(fileName, lineNumber, "bad variable size,can be only 8/16/32"); return b;
                            }
                        }
                    } else
                    {
                        Program.Error(fileName, lineNumber, "array size and initialisation parameters count is not equal");
                        return b;
                    }
                }
            }
            if (b.Length != pos) {
                Program.Error(fileName, lineNumber, "array size and initialisation parameters count is not equal"); return b; }
            return b;
        }
    }
}
