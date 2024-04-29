using System;

public class Example
{
    public static void Main()
    {
        string str = Console.ReadLine();
        
        foreach (char i in str)
        {
            if (char.IsUpper(i))
            {
                Console.Write(char.ToLower(i));
            }
            else
            {
                Console.Write(char.ToUpper(i));
            }
        }
    }
}