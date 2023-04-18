import Foundation

func solution(_ n:Int) -> Int {
    for i in 2...(n-1) {
        if (n-1) % i == 0 {
            return i
        }
    }
    return 0
}