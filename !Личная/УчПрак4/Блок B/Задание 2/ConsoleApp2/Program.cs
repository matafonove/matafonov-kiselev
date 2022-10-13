using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp2
{
    class Program
    {
        static void Main(string[] args)
        {
            var a = new[] { 1, 4, 6, 2, 3, 9, 5, 4, 5, 6, 7, 8, 9, 0 };
            Console.WriteLine(Array.LastIndexOf(a, a.Max()));
            Console.ReadKey(); 
        }
    }
}
