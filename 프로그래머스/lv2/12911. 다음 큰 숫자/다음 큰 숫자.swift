import Foundation

func solution(_ n: Int) -> Int {
    let binaryOneCount = n.nonzeroBitCount
    var temp = n + 1
    
    while temp.nonzeroBitCount != binaryOneCount {
        temp += 1
    }
    
    return temp
}