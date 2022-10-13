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
            int x, y;
            Console.Write("Введите x");
            x = Convert.ToInt32(Console.ReadLine());
            Console.Write("Введите y");
            y = Convert.ToInt32(Console.ReadLine());
            //Оператор проверки 
            if (x <= 0 && y <= 0)
            {
                x = x*-1;
                y = y*-1;
                Console.WriteLine(x);
                Console.WriteLine(y);
            }
            else
            {
                Console.WriteLine(x);
                Console.WriteLine(y);
            }
            Console.ReadKey();
        }
    }
}
