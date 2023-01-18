import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var A = A
    
    for count in 0...A.count {
        if A == B {
            return count
        }
        
        let temp = A.removeLast()
        A.insert(temp, at: A.startIndex)
    }
    
    return -1
}