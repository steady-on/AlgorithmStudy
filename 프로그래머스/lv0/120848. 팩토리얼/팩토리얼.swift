import Foundation

func solution(_ n:Int) -> Int {
    var n = n
    var i = 2
    
    while n > 1 {
        i += 1
        n /= i
        
    }
    return (i-1)
}