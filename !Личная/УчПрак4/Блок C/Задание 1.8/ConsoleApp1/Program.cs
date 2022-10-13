using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    static class Program
    {
        static void Main(string[] args)
        {
            int[] array = { 0, 11, 5, 124, 5, 3, 7, 8, 3, 9, 23, 8, 74, 59, 0 };
            array = array.Where(n => n != 0).Select(n => -n)
                .insertionSort().Select(n => -n).ToArray();
            foreach (int i in array)
                Console.WriteLine(i);
        }
        public static IEnumerable<int> insertionSort(this IEnumerable<int> arr)
        {
            var A = arr.ToArray();
            for (int i = 1; i < A.Length; i++)
            {
                int currElem = A[i];
                int prevKey = i - 1;
                while (prevKey >= 0 && A[prevKey] > currElem)
                {
                    A[prevKey + 1] = A[prevKey];
                    A[prevKey] = currElem;
                    prevKey--;
                }
                Console.ReadKey();
            }
            return A;
            
        }
        
    }
}
