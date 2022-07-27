using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment3
{

    class Account
    {
        int Ac_Number;
        string Name;
        string Type;
        int amount;

        public Account(int Ac_Number, string Name, string Type, int amount)
        {
            this.Ac_Number = Ac_Number;
            this.Name = Name;
            this.Type = Type;
            this.amount = amount;
        }

        public void deposit(int deposit)
        {
            amount += deposit;

            Console.WriteLine("enter the amount : "+ amount);
        }

        public void withdrawel(int widraw)
        {
            if(amount < widraw)
            {
                Console.WriteLine("Not Enough balance.Your current balance is: " , amount);
            }else
            {
                amount -= widraw;
                Console.WriteLine("Withdrawl Successful. Balance left is: "  + amount);
            }
        }

        public void Display()
        {
            Console.WriteLine("Account number:-  " + Ac_Number);
            Console.WriteLine("Name:  " + Name);
            Console.WriteLine("Type: " + Type);
            Console.WriteLine("Balance:  " + amount);
        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter Account Number");
            int Ac_Number = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter Account Holder name");
            string Name = Convert.ToString(Console.ReadLine());
            Console.WriteLine("Enter Account Type");
            string Type = Convert.ToString(Console.ReadLine());
            Console.WriteLine("Enter Amount you want to add");
            int amount = Convert.ToInt32(Console.ReadLine());

            Account obj1 = new Account(Ac_Number, Name, Type, amount);
            Console.WriteLine("Enter your choice: ");
            Console.WriteLine("1 . Deposit");
            Console.WriteLine("2 . Withdrawl");
            Console.WriteLine("3 . Display Details");
            Console.WriteLine("4 . Exit the Program");

            
            int check = 0;

            while (check == 0)
            {
                int n = Convert.ToInt32(Console.ReadLine());

                switch (n)
                {
                    case 1:
                        Console.WriteLine("Enter amount you want to Deposit");
                        int am = Convert.ToInt32(Console.ReadLine());
                        obj1.deposit(am);
                        obj1.Display();
                        break;
                    case 2:
                        Console.WriteLine("Enter amount you want to Withdraw");
                        int amw = Convert.ToInt32(Console.ReadLine());
                        obj1.withdrawel(amw);
                        obj1.Display();
                        break;
                    case 3:
                        Console.WriteLine("Account Details: ");
                        obj1.Display();
                        break;
                    case 4:
                        Console.WriteLine("Exit");
                        check = 1;
                        break;
                    default:
                        Console.WriteLine("Invalid Choice");
                        break;

                }
            }


        }
    }
}
