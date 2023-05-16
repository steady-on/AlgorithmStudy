import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    var result = [Int]()
    
    for str in intStrs {
        let temp = Int(String(Array(str)[s...(s+l-1)]))!
        
        if temp > k { result.append(temp)}
    }
    
    return result
}