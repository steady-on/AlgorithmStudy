import Foundation

func solution(_ n:Int) -> Int {
    let range = (1...n).reversed()
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