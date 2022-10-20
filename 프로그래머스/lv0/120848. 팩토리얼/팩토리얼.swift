import Foundation

func solution(_ n:Int) -> Int {
    var n = n
    var i = 0
    
    while n > 0 {
        i += 1
        n /= i
    }
    return i-1
}