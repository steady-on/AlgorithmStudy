using System;

public class Example
{
    public static void Main()
    {
        string[] s = Console.ReadLine().Split(' ');

        int a = int.Parse(s[0]);
        
        if (a % 2 == 0)
        {
            Console.WriteLine($"{a} is even");
        }
        else
        {
            Console.WriteLine($"{a} is odd");
        }
    }
}