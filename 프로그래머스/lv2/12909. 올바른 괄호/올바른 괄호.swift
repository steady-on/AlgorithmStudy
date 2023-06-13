import Foundation

func solution(_ s: String) -> Bool {
    var stack = [Character]()
    
    for char in s {
        guard char == ")" else {
            stack.append(char)
            continue
        }
        
        guard let last = stack.last, last != ")" else { return false }
        
        stack.popLast()
    }
    
    return stack.isEmpty ? true : false
}