using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            string s = "АМОГУС";
            char[] b = new char[s.Length];
            for (int i = 0; i < s.Length; i++)
                b[(i + s.Length / 2) % s.Length] = s[i];
            Console.WriteLine(new string(b));
            Console.ReadKey();

        }
    }
}
