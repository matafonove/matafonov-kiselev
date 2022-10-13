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
            Console.WriteLine("Введите число: ");
            int a = Convert.ToInt32(Console.ReadLine());
            if (a % 2==0) Console.WriteLine("Последняя цифра числа чётная");
            else Console.WriteLine("Последняя цифра числа не чётная");
            Console.ReadKey();
        }
    }
}
