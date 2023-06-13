import Foundation

func solution(_ s: String) -> Int{
    var stack = [Character]()
    
    for char in s {
        guard let last = stack.last, last == char else {
            stack.append(char)
            continue
        }
        
        stack.popLast()
    }

    return stack.isEmpty ? 1 : 0
}