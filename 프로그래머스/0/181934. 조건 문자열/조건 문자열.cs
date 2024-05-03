using System;

public class Solution {
    public int solution(string ineq, string eq, int n, int m) {
        
        if (ineq.Equals(">"))
        {
            if (eq.Equals("="))
            {
                return n >= m ? 1 : 0;
            }
            else
            {
                return n > m ? 1 : 0;
            }
        }
        else
        {
            if (eq.Equals("="))
            {
                return n <= m ? 1 : 0;
            }
            else
            {
                return n < m ? 1 : 0;
            }
        }
    }
}