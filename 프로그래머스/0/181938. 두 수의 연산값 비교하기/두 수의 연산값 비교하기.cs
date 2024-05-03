using System;

public class Solution {
    public int solution(int a, int b) {
        int ab = int.Parse($"{a}{b}");
        int calcu = 2 * a * b;
        
        return ab >= calcu ? ab : calcu;
    }
}