import Foundation

func solution(_ n:Int) -> [Int] {
    var n = n
    var result: [Int] = [n]
    
    while n != 1 {
        n = n % 2 == 0 ? n / 2 : 3*n+1
        result.append(n)
    }

    return result
}