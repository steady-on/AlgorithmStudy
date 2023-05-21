import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var sum = 0
    var index = 0
    
    while sum <= n {
        sum += numbers[index]
        index += 1
    }
    
    return sum
}