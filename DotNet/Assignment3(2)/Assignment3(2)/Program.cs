using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Assignment3(2)
{

    abstract class student
    {
        public string Name;
        public string ID;
        public double grade;
        
        public abstract bool Passed(double grad);
    }

    class Undergraduate : student
    {
        public override bool Passed(double grad)
        {
            if(grad > 70.0f)
            {
                return true;
            }else
            {
                return false;
            }
        }
    }

    class Graduate : student
    {
        public override bool Passed(double grad)
        {
            if(grad > 80.0f)
            {
                return true;
            }else
            {
                return false;
            }
        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {
            Undergraduate A = new Undergraduate();
            Graduate B = new Graduate();

            Console.WriteLine("1 . Undergraduate");
            Console.WriteLine("2 . Graduate");

            int aa = Convert.ToInt32(Console.ReadLine());

            if(aa == 1)
            {
                Console.WriteLine("Name: ");
                A.Name = Console.ReadLine();
                Console.WriteLine("ID: ");
                A.ID = Console.ReadLine();
                Console.WriteLine("Enter Grade: ");
                A.grade = Convert.ToInt32(Console.ReadLine());

                Console.WriteLine("Result: " + A.Passed(A.grade));
            }else if(aa == 2)
            {
                Console.WriteLine("Name: ");
                B.Name = Console.ReadLine();
                Console.WriteLine("ID: ");
                B.ID = Console.ReadLine();
                Console.WriteLine("Grades");
                B.grade = Convert.ToInt32(Console.ReadLine());

                Console.WriteLine("Result: " + B.Passed(B.grade));
            }else
            {
                Console.WriteLine("Invalid Input");
            }

            Console.ReadLine();

        }
    }
}
