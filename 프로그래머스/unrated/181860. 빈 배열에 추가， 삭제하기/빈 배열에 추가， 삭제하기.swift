import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var x = [Int]()
    
    for (sign, element) in zip(flag, arr) {
        if sign {
            x += Array(repeating: element, count: element * 2)
        } else {
            for _ in 1...element { x.removeLast() }
        }
    }
    
    return x
}