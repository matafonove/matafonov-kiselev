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
            int n = 0, a, b, c;
            while (n > 999 || n < 100)
            {
                Console.Write("Введите трёхзначное число: ");
                n = Convert.ToInt32(Console.ReadLine());
            }
            a = n / 100;
            b = (n % 100) / 10;
            c = n % 10;
            if (a > c)
                Console.WriteLine("Первое число {0} больше, чем {1}!", a, c);
            else if (c > a)
                Console.WriteLine("Последнее число {0} больше, чем {1}!", c, a);
            else
                Console.WriteLine("Числа {0} и {1} равны!", a, c);
            Console.ReadKey();
        }
    }
}
