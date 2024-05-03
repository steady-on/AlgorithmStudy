using System;

public class Solution {
    public int solution(string ineq, string eq, int n, int m) {
        string oper = ineq + eq;
            
        if (oper == ">=") return n >= m ? 1 : 0;
        else if (oper == "<=") return n <= m ? 1 : 0;
        else if (oper == ">!") return n > m ? 1 : 0;                    
        else return n < m ? 1 : 0;
    }
}