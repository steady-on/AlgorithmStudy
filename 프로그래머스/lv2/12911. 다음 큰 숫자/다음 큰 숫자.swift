import Foundation

func solution(_ n: Int) -> Int {
    let binaryOneCount = String(n, radix: 2).filter { $0 == "1" }.count
    
    var temp = n + 1
    var tempOneCount = 0
    
    while tempOneCount != binaryOneCount {
        tempOneCount = String(temp, radix: 2).filter { $0 == "1" }.count
        temp += 1
    }
    
    return temp - 1
}