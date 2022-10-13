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
            int a;
            a = 2263;
            if ((a / 1000 + (a / 100) % 10 + (a % 100) / 10 + a % 10) % 3 == 0)
                Console.WriteLine("Cумма цифр числа {0} кратна 3.", a);
            else Console.WriteLine("Cумма цифр числа {0} не кратна 3.", a);
            Console.ReadKey();
        }
    }
}
