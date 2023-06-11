import Foundation

func solution(_ s:String) -> Int {
    var count = 0
    var a = String()
    var b = String()
    
    for char in s {
        guard a.isEmpty == false && a.first != char else { 
            a.append(char) 
            continue
        }
        
        b.append(char)

        if a.count == b.count {
            count += 1
            (a, b) = ("", "")
        }
    }
    
    if a.isEmpty == false { count += 1 }
    
    return count
}