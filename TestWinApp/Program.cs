using System;

namespace TestWinApp
{
    internal class Program
    {
        static int Main(string[] args)
        {
            
           int sum = int.Parse(args[0]) + int.Parse(args[1]);
            Console.WriteLine(sum);
           // Console.ReadLine();
           return sum;  
        }
    }
}
