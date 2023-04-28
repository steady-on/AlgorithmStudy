import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var result: [Int] = []
    
    for i in l...r {
        let temp = Array(String(i)).filter { $0 != "5" && $0 != "0" }
        if temp.isEmpty { result.append(i) }
    }
    
    return result.isEmpty ? [-1] : result.sorted()
}