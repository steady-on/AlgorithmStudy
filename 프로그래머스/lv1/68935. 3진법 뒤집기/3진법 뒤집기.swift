import Foundation

func solution(_ n:Int) -> Int {
    var reversed3x: String = ""
    
    var n = n
    while n >= 3 {
        reversed3x.append(String(n % 3))
        n /= 3
    }
    reversed3x.append(String(n))
    
    var x10: Int = 0
    for (index, num) in reversed3x.enumerated() {
        let expo: Int = reversed3x.count - 1 - index
        x10 += Int(pow(Double(3), Double(expo))) * Int(String(num))!
    }

    return x10
}