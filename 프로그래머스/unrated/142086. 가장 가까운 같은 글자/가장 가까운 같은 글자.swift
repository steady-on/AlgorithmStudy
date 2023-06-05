import Foundation

func solution(_ s:String) -> [Int] {
    var stack = [Character: Int]()
    var result = [Int]()
    
    for (index, char) in s.enumerated() {
        if let last = stack[char] { 
            result.append(index - last)
        } else {
            result.append(-1)
        }
        
        stack[char] = index
    }
    
    return result
}