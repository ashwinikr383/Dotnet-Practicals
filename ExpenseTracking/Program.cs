using System;

class ExpenseTracker
{
    static void Main()
    {
        try
        {
            Console.Write("Enter expense name: ");
            string name = Console.ReadLine();

            Console.Write("Enter amount: ");
            double amount = Convert.ToDouble(Console.ReadLine());

            if (amount <= 0)
                throw new Exception("Amount must be positive.");

            Console.WriteLine("Expense Added: " + name);
            Console.WriteLine("Amount: ₹" + amount);
        }
        catch (FormatException)
        {
            Console.WriteLine("Invalid amount entered.");
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }
}