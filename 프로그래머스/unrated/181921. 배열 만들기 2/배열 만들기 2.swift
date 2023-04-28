import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var result: [Int] = []
    
    for i in l...r {
        let temp = Set(String(i)).isSubset(of: ["5", "0"])
        if temp { result.append(i) }
    }
    
    return result.isEmpty ? [-1] : result
}