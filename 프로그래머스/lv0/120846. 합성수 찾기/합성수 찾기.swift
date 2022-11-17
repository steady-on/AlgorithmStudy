import Foundation

func solution(_ n:Int) -> Int {
    var count = 0
    
    for num in 1...n {
        var tempCount = 0
        for i in 1...num {
            if num % i == 0 {
                tempCount += 1
            }
        }
        if tempCount >= 3 {
            count += 1
        }
    }
    return count
}