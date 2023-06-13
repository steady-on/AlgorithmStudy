import Foundation

func solution(_ s: String) -> Int{
    var stack = [Character]()
    
    for char in s {
        guard let last = stack.last else {
            stack.append(char)
            continue
        }
        
        if char == last {
            stack.popLast()
            continue
        } 
        
        stack.append(char)
    }

    return stack.isEmpty ? 1 : 0
}