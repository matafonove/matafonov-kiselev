using System;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            int sum = 0;

            for (int i = 20; i <= 40; i++)
            {
                sum += i * i * i;
            }

            Console.WriteLine(sum);
            Console.ReadKey();
        }
    }
}
