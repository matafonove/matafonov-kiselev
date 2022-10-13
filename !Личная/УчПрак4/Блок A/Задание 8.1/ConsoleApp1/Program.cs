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
            double x, a, b;
            Console.Write("Введите x");
            x = Convert.ToDouble(Console.ReadLine());
            if (x >= 3)
            {
                a = x * x + 3 * x + 9;
                Console.WriteLine(a);
            }
            else if (x < 3)
            {
                a = (x /( x * x * x - 6));
                Console.WriteLine(b);
            }

            Console.ReadKey();
        }
    }
}
