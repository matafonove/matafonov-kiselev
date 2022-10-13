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
            //Ввод цикла
            for (uint i = 0; i < 5; i++)
            {
                bool isEvenFib = IsEvenFib(i);
                Console.WriteLine(isEvenFib);
            }
        }

        static bool IsEvenFib(uint n)
        {
            if (n == 1)
                return false;
            bool previous = false, current = true;
            for (int i = 2; i < n; i++) 
            {
                bool temp = current;
                current ^= previous;
                previous = temp;
            }
            return current;
        }
    }
}
