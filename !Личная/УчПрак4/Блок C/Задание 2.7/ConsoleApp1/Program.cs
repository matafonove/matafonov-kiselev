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
            Console.Write("N = "); int n = int.Parse(Console.ReadLine());
            int[] x = new int[n];
            for (int i = 0; i < n; i++)
            {
                Console.Write($"X[{i + 1}] = ");
                x[i] = int.Parse(Console.ReadLine());
            }
            Console.WriteLine($"Массив: {String.Join(" ", x)}\nРазличных чисел: {x.Distinct().Count()}");
            Console.ReadKey();
        }
    }
}
