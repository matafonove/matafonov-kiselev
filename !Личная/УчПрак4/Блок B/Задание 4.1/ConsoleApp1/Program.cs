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
            Console.WriteLine("Введите ваше слово ");
            string s = Console.ReadLine();
            Console.WriteLine("Буквы без повторения и количество букв без повторения ");
            var q = s.Distinct();
            foreach (char c in q)
                Console.Write(c);
            Console.WriteLine("\n{0}", q.Count());
            Console.ReadLine();
        }
    }
}
