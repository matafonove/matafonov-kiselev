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
            Dictionary<int, string> dics = new Dictionary<int, string>();
            //Ввод словоря
            dics.Add(3, "Абрамов");
            dics.Add(4, "Сабуров");
            dics.Add(1, "Щербаков");
            dics.Add(2, "Аморян");

            foreach (var dic in dics.OrderBy(n => n.Key))
            {
                Console.WriteLine("Занятое место: {0}, Фамилия: {1}", dic.Key, dic.Value);
            }
            Console.Read();
        }
    }
}
