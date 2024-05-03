using System;

public class Solution {
    public string solution(string code) {
        bool mode = false;
        string ret = "";
        
        for (int i = 0; i < code.Length; i++)
        {
            if (code[i] == '1') {
                mode = !mode;
                continue;
            }
            
            if (mode && (i % 2 == 1))
            {
                ret += code[i];
            }
            else if (mode == false && i % 2 == 0)
            {
                ret += code[i];
            }
        }
        
        return String.IsNullOrEmpty(ret) ? "EMPTY" : ret;
    }
}