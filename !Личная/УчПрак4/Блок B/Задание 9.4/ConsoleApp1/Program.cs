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
            int rowLenght = 4,
                columnLenght = 3;

            int[,] matrix =
            {
                {1, 5, 34},
                {17, 0, -5},
                {-91, 5, -91},
                {-90, 5, -91},
            };

            int maxNum = default, minNum = default;
            foreach (int i in matrix)
            {
                if (i > maxNum) maxNum = i;
                else if (i < minNum) minNum = i;
            }

            int[,] swapMatrix = new int[rowLenght, columnLenght];

            for (int i = 0; i < rowLenght; i++)
                for (int j = 0; j < columnLenght; j++)
                {
                    if (matrix[i, j] == maxNum)
                    {
                        swapMatrix[i, j] = minNum;
                    }
                    else if (matrix[i, j] == minNum)
                    {
                        swapMatrix[i, j] = maxNum;
                    }
                    else
                    {
                        swapMatrix[i, j] = matrix[i, j];
                    }
                    Console.ReadKey();
                }
        }
    }
}
