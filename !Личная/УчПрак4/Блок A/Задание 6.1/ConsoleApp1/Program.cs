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
            int x = 3, y =2, z = 77;
            //Оператор проверки
            if (x <= 5 && x >= -3)
            {
                Console.WriteLine("x принадлежит интервалу");
            }
            else if (x>5 && x<3)
                {
                Console.WriteLine("x не принвадлежит интервалу");
                }
            if (y <= 5 && y >= -3)
            {
                Console.WriteLine("y принадлежит интервалу");
            }
            else if (y > 5 && y < 3)
            {
                Console.WriteLine("y не принвадлежит интервалу");
            }
            if (z <= 5 && z >= -3)
            {
                Console.WriteLine("z принадлежит интервалу");
            }
            else if (z > 5 && z < 3)
            {
                Console.WriteLine("z не принвадлежит интервалу");
            }

            Console.ReadKey();
        }
    }
}
