using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment1
{
    class Program
    {
        static void Main(string[] args)
        {
            problem1();
            problem2();
            problem3();
            stringmanipulation();

        }

        //Function for problem 1

        public static void problem1()
        {
            int[] array = { 15, 1, 11, 26, 90, 2, 7, 61 };

            int size = array.Length;

            int sum = 0;
            for (int i = 0; i < size; i++)
            {
                sum += array[i];
            }

            Array.Sort(array);

            Console.WriteLine("The Average is :" + sum / size);
            Console.WriteLine(" The Minimum is: " + array[0]);
            Console.WriteLine(" The Maximum is : " + array[size - 1]);


            Console.ReadLine();

        }

        //Question 2 starts here

        public static void problem2()
        {
            int[] array = new int[10];

            int sum = 0;
            int size = 10;
            for (int i = 0; i < 10; i++)
            {
                Console.WriteLine("Enter Elements : {0}", (i + 1));
                array[i] = Convert.ToInt32(Console.ReadLine());
                sum += array[i];
            }

            Array.Sort(array);

            Console.WriteLine("Total of element is :- " + sum);
            Console.WriteLine("Average of element is :- " + sum / size);
            Console.WriteLine("Minimum of element is :-" + array[0]);
            Console.WriteLine("Maximum of element is :- " + array[size - 1]);

            Console.WriteLine("array is ascending Order is :- ");

            for (int i = 0; i < size; i++)
            {
                Console.Write(" " + array[i]);
            }

            Console.Write("\n");

            Console.WriteLine("array in descending order is :- ");

            for (int i = size - 1; i >= 0; i--)
            {
                Console.Write(" " + array[i]);
            }

            Console.Write("\n");

            Console.ReadLine();

        }

        //Function for Problem 3

        public static void problem3()
        {
            int[,] array = new int[5, 3];

            string[] sub = { "C#", "HTML", "SQL" };
            int[] avg = new int[5];
            for (int i = 0; i < 5; i++)
            {
                int total = 0;
                for (int j = 0; j < 3; j++)
                {
                    Console.Write("Maarks of students " + (i + 1) + " in subject " + sub[j] + ":");
                    array[i, j] = Convert.ToInt32(Console.ReadLine());
                    total += array[i, j];
                }

                avg[i] = total / 5;
            }

            for (int i = 0; i < 5; i++)
            {
                Console.Write("Student {0} has", i);
                if (avg[i] < 50)
                {
                    Console.WriteLine(" Failed");
                }
                else
                {
                    Console.WriteLine(" Passed");
                }
            }

            Console.ReadLine();

        }

        
        public static void stringman()
        {

            Console.WriteLine("Enter any word : ");
            string x = Console.ReadLine();

            Console.WriteLine("Length is:  " + x.Length);

            string y = new string(a.Reverse().ToArray());

            Console.WriteLine("Reverse:" + y);

            Console.WriteLine("First word : ");

            string c = Console.ReadLine();

            Console.WriteLine("Second word  : ");
            string d = Console.ReadLine();

            if (String.Equals(c, d))
            {
                Console.WriteLine("Equal");
            }
            else
            {
                Console.WriteLine("Not equal");
            }

            Console.ReadLine();




        }
    }
}
