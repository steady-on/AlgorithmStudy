import Foundation

func solution(_ s:String) -> Bool {
    let s: String = s.lowercased()
    var p: Int = 0, y: Int = 0
    
    for char in s {
        if char == "p" {
            p += 1
        } else if char == "y" {
            y += 1
        }
    }

    return (p == y)
}