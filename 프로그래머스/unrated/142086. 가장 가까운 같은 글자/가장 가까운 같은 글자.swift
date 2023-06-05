import Foundation

func solution(_ s:String) -> [Int] {
    var stack = [Character]()
    var result = [Int]()
    
    for (index, char) in s.enumerated() {
        if let last = stack.lastIndex(of: char) {
            result.append(index - last)
        } else {
            result.append(-1)
        }
        
        stack.append(char)
    }
    
    return result
}