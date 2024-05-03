using System;

public class Solution {
    public int solution(int a, int b) {
        int ab = int.Parse($"{a}{b}");
        int ba = int.Parse($"{b}{a}");
        
        return ab > ba ? ab : ba;
    }
}