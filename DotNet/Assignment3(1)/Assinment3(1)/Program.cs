using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day4_Assigment
{

    class Employee
    {
        private int empid;
        private string name;
        private string address;
        private string city;
        private string Dep;
        private int salary;

        //set statements 
        public void SetEmpid(int i)
        {
            empid = i;
        }
        public void SetName(string s)
        {
            name = s;
        }
        public void SetAddress(string s)
        {
            address = s;
        }
        public void Setcity(string s)
        {
            city = s;
        }
        public void SetDep(string s)
        {
            Dep = s;
        }
        public void Setsal(int a)
        {
            salary = a;
        }

        //get statements 
        public int GetEmpid()
        {
            return empid;
        }
        public string GetName()
        {
            return name;
        }

        public string GetAdress()
        {
            return address;
        }

        public string GetCity()
        {
            return city;
        }

        public string GetDep()
        {
            return Dep;
        }

        public int GetSal()
        {
            return salary;
        }

        public virtual void getsalary()
        {
            Console.WriteLine("Actual salary = " + GetSal());
        }
    }

    class Permanent_Emp : Employee
    {
        private int pfund;

        public void SetPfud(int i)
        {
            pfund = i;
        }
        public int getpfund()
        {
            return pfund;
        }
        public override void getsalary()
        {
            Console.WriteLine("New salary = " + (GetSal() - getpfund()));
        }
    }

    class Contract_Emp : Employee
    {
        private int perks;

        public void SetPerks(int i)
        {
            perks = i;
        }
        public int GetPerks()
        {
            return perks;
        }

        public override void getsalary()
        {
            Console.WriteLine("New salary = " + (GetSal() + GetPerks()));
        }
    }
    internal class Program
    {

        public static Contract_Emp setcontract(int a,string b,string c,string d,string e , int f , int g)
        {
            Contract_Emp emp = new Contract_Emp();
            emp.SetEmpid(a);
            emp.SetName(b);
            emp.SetAddress(c);
            emp.Setcity(d);
            emp.SetDep(e);
            emp.Setsal(f);
            emp.SetPerks(g);
            return emp;
        }

        public static Permanent_Emp setpermanent(int a, string b, string c, string d, string e, int f, int g)
        {
            Permanent_Emp emp = new Permanent_Emp();
            emp.SetEmpid(a);
            emp.SetName(b);
            emp.SetAddress(c);
            emp.Setcity(d);
            emp.SetDep(e);
            emp.Setsal(f);
            emp.SetPfud(g);
            return emp;
        }
        static void Main(string[] args)
        {
            Console.WriteLine("Enter Details");

            Console.WriteLine("Enter ID");
            int emp_id = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter Name: ");
            string name = Console.ReadLine();
            Console.WriteLine("Enter Address: ");
            string address = Console.ReadLine();
            Console.WriteLine("Enter City: ");
            string city = Console.ReadLine();
            Console.WriteLine("Enter Department: ");
            string dept = Console.ReadLine();
            Console.WriteLine("Enter Salary: ");
            int salary = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Select the type of Emplpoyee");
            Console.WriteLine("1 . Contract Employee ");
            Console.WriteLine("2 . Permanent Employee");

            int a = Convert.ToInt32(Console.ReadLine()); ;

            if(a == 1)
            {
                Console.WriteLine("Perks Earned By Employee: ");
                int perks = Convert.ToInt32(Console.ReadLine());
                Contract_Emp obj = setcontract(emp_id , name , address , city , dept , salary , perks);
                obj.getsalary();
            }else if(a == 2)
            {
                Console.WriteLine("PPF of employee");
                int pfunds = Convert.ToInt32(Console.ReadLine());
                Permanent_Emp obj = setpermanent(emp_id, name, address, city, dept, salary, pfunds);
                obj.getsalary();
            }

            Console.ReadLine();
        }
    }
}