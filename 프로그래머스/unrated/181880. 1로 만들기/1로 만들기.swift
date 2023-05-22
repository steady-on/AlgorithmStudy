import Foundation

func solution(_ numList:[Int]) -> Int {
    return numList.map { x in
        switch x {
        case 1: return 0
        case 2..<4: return 1
        case 4..<8: return 2
        case 8..<16: return 3
        default: return 4
        }
    }.reduce(0, +)
}