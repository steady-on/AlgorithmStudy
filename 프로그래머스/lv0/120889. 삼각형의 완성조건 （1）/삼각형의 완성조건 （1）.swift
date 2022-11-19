import Foundation

func solution(_ sides:[Int]) -> Int {
    var sides = sides.sorted()
    return sides[0] + sides[1] > sides[2] ? 1 : 2
}