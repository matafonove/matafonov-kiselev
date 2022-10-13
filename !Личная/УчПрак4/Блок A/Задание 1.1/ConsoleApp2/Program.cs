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
            int a = 7 , b = 3, c;
            //Ввод переменных
            c = a;
            a = b;
            b = c;
            Console.Write("a=");
            Console.WriteLine(a);
            Console.Write("b=");
            Console.WriteLine(b);
            Console.ReadKey();
        }
    }
}
