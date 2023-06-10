import Foundation

func solution(_ number:[Int]) -> Int {
    let last = number.count
    var count = 0
    
    for first in number.indices {
        for second in (first+1) ..< last {
            for third in (second+1) ..< last {
                if number[first] + number[second] + number[third] == 0 { count += 1}
            }
        }
    }
    
    return count
}