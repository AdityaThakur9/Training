using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment2_part2
{
    public class Student
    {
        int Roll_Number;
        string Name;
        string Class;
        int Semester;
        //string Branch;
        int[] Marks = new int[5];


        public Student()
        {
            Console.WriteLine("Enter Name: ");
            this.Name = Console.ReadLine();
            Console.WriteLine("Enter RollNo.: ");
            this.Roll_Number = Int32.Parse(Console.ReadLine());
            Console.WriteLine("Enter Class: ");
            this.Class = Console.ReadLine();
            Console.WriteLine("Enter Semester: ");
            this.Semester = Char.Parse(Console.ReadLine());

            Console.WriteLine("<arks in each subject");

            for (int i = 0; i < 5; i++)
            {
                this.Marks[i] = Int32.Parse(Console.ReadLine());
            }
        }

        //function to display
        public void Display()
        {
            Console.WriteLine("Student's Name is : " + Name);
            Console.WriteLine("Roll Number : " + Roll_Number);
            Console.WriteLine("Class : " + Class);
            Console.WriteLine("Semester : " + Semester);
            Console.Write("Result : ");
            Boolean bool = false;
            int total = 0;
            int average;

            for (int i = 0; i < 5; i++)
            {
                total += Marks[i];

                if (Marks[i] < 35)
                {
                    bool = true;
                }
            }

            average = total / 5;

            if (bool)
            {
                Console.WriteLine("Student has failed");
            }
            else if (total > 35 && average < 50)
            {
                Console.WriteLine(" Student has failed");
            }
            else
            {
                Console.WriteLine("Student has passed");
            }
        }
    }

    internal class Program
    {
        static void Main(string[] args)
        {
            Student student1 = new Student();
            student1.Display();

            Console.ReadLine();


        }
    }
}