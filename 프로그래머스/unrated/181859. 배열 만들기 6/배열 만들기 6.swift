import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var stk = [Int]()
    
    for element in arr {
        if stk.isEmpty || stk.last != element {
            stk.append(element)
        } else {
            stk.removeLast()
        }
    }
    
    return stk.isEmpty ? [-1] : stk
}