using System;

public class Example
{
    public static void Main()
    {
        string input = Console.ReadLine();

        int a = int.Parse(input);
        
        string result = (a % 2 == 0) ? $"{a} is even" : $"{a} is odd";
        
        Console.WriteLine(result);
    }
}