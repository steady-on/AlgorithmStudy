import Foundation

func solution(_ n:Int) -> Int {
    let range = Array(1...n)
    var count = 0
    
    for num in range {
        var tempCount = 0
        for i in (1...num).reversed() {
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