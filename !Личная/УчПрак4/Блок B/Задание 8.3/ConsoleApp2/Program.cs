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
            Random random = new Random();

            int[] Values = new int[10];
            Console.WriteLine("Значения массива: ");
            for (int i = 0; i < Values.Length; i++)
            {
                Values[i] = random.Next(0, 100);
                Console.Write(i + 1 + ") " + Values[i] + "\t");
            }

            int result = Math.Abs(Values.Max()) - Math.Abs(Values.Min());
           
            if (result < 25) { Console.WriteLine("Утверждение верно"); }
            else { Console.WriteLine("Утверждение ложно"); }
            Console.ReadKey();
        }
    }
}
