import Foundation

func solution(_ s:String) -> Int {
    let arr = s.components(separatedBy: " ")
    var result: [String] = []
    
    for i in arr {
        if i != "Z" {
            result.append(i)
        } else {
            // if !result.isEmpty {
                result.removeLast()
            // }
        }
    }
    
    return result.reduce(0, {$0 + Int($1)!})
}
