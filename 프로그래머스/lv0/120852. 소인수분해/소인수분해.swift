import Foundation

func solution(_ n:Int) -> [Int] {
    var n: Int = n
    let dividers: [Int] = (2...n).filter { n % $0 == 0 }
    var result:[Int] = []
    
    for i in dividers {
        if n % i == 0 {
            result.append(i)
        }
        
        while n % i == 0 {
            n /= i
        }
    }
    
    
    return result
}