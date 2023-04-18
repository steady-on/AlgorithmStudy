import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result: Int = 0
    
    for n in left...right {       
        if floor(sqrt(Double(n))) == sqrt(Double(n)) {
            result -= n
        } else {
            result += n
        }
    }
    
    return result
}