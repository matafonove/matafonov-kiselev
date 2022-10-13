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
            var s = new[] { 1, 2, 3, 4, 1, 2, 3, 4, 4 };
            Console.WriteLine("Мах число встречается " + s.Count(x => x == s.Max()));
            Console.ReadKey();
        }
    }
}
