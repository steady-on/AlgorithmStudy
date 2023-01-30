import Foundation

func solution(_ n:Int) -> Int {
    var reversed3x: [Int] = []
    
    var n = n
    while n >= 3 {
        reversed3x.append(n % 3)
        n /= 3
    }
    reversed3x.append(n)
    
    var x10: Int = 0
    for index in reversed3x.indices {
        x10 += reversed3x[index] * Int(pow(Double(3), Double(reversed3x.count-index-1)))
    }

    return x10
}