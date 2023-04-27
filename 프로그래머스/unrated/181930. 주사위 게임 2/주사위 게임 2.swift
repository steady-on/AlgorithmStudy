import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    let sum = a+b+c
    
    if a == b, b == c {
        return sum * (a*a + b*b + c*c) * (a*a*a + b*b*b + c*c*c)
    } else if a != b, b != c, a != c {
        return sum
    } else {
        return sum * (a*a + b*b + c*c)
    }   
}