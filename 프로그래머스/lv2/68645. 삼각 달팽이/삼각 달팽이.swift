import Foundation

func solution(_ n:Int) -> [Int] {
    var result = Array(repeating: [Int](), count: n)
    
    var value = 1
    var direction = 0
    var index = -1
    
    for i in (1...n).reversed() {
        switch direction % 3 {
        case 0:
            for _ in 1...i {
                index += 1
                result[index].insert(value, at: direction / 3)
                value += 1
            }
        case 1:
            var place = direction / 3 + 1
            for _ in 1...i {
                result[index].insert(value, at: place)
                value += 1
                place += 1
            }
        default:
            for _ in 1...i {
                index -= 1
                result[index].insert(value, at: result[index].count - (direction / 3))
                value += 1
            }
        }
        direction += 1
    }
    
    return result.flatMap { $0 }
}