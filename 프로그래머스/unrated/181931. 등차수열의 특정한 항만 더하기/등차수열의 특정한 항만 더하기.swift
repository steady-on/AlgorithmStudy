import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var result: Int = 0
    
    for (index, value) in included.enumerated() {
        if value {
            result += a + d * index
        }
    }    
    
    return result
}