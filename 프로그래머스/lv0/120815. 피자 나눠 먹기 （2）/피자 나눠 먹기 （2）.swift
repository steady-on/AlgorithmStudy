import Foundation

func solution(_ n:Int) -> Int {
    for i in [6,3,2,1] {
        if n % i == 0 {
            return (n/i)
        }
    }
    return n
}