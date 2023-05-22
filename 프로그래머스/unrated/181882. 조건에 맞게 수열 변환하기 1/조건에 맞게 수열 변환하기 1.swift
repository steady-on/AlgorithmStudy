import Foundation

func solution(_ arr:[Int]) -> [Int] { 
    return arr.map { x in
        if x >= 50, x % 2 == 0 {
            return x / 2
        } else if x < 50, x % 2 == 1 {
            return x * 2
        } else {
            return x
        }
    }
}