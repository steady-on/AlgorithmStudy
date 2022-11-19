import Foundation

func solution(_ array:[Int]) -> [Int] {
    if let m = array.max() {
        if let i = array.firstIndex(of: m) {
            return [m, i]
        }
    }
    return [0,0]
}