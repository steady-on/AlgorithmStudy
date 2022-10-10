import Foundation

func solution(_ angle:Int) -> Int {
    switch angle {
        case 1..<90:
            return 1 
        case 90:
            return 2
        case 91..<180:
            return 3
        default:
            return 4
    }
}