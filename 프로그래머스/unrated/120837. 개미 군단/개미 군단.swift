import Foundation

func solution(_ hp:Int) -> Int {
    var hp: Int = hp
    var count: Int = 0
    for i in [5, 3, 1] {
        count += hp / i
        hp %= i
    }
    return count
}