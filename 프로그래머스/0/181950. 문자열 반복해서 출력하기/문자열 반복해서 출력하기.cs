using System;

public class Example
{
    public static void Main()
    {
        string[] input = Console.ReadLine().Split(' ');

        string str = input[0];
        int n = int.Parse(input[1]);
        
        for (int i = 0; i < n; i++)
        {
            Console.Write(str);
        }
    }
}