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
            for (int z = 1; z <= 100; z++)
            {
                if (z % 7 == 0)
                    Console.WriteLine(z);
            }
            Console.ReadLine();
     
        }
    }
    
}
