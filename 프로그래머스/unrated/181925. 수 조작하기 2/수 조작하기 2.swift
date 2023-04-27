import Foundation

func solution(_ numLog:[Int]) -> String {
    let controlSet: [Int: String] = [1: "w", -1: "s", 10: "d", -10: "a"]
    var result: String = ""
    var temp: Int = numLog[0]
    
    for num in numLog[1...] {
        result += controlSet[num - temp]!
        temp = num
    }
    
    return result
}