import Foundation

func countDivisor(_ num: Int) -> Int {
    let divisor: [Int] = (1...num).filter { num % $0 == 0 }
    return divisor.count
}

func solution(_ left:Int, _ right:Int) -> Int {
    var result: Int = 0
    
    for n in left...right {       
        if countDivisor(n) % 2 == 0 {
            result += n
        } else {
            result -= n
        }
    }
    
    return result
}