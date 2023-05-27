import Foundation

func solution(_ strArr:[String]) -> Int {
    var result = [Int: Int]()
    
    for str in strArr {
        if result[str.count] != nil {
            result[str.count]! += 1
        } else {
            result[str.count] = 1
        }
    }
    
    return result.values.max()!
}