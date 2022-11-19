import Foundation

func solution(_ n:Int) -> Int {
    let n: Double = sqrt(Double(n))
    return n > floor(n) ? 2 : 1
}