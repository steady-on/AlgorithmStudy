import Foundation

func solution(_ n:Int) -> [[Int]] { 
    guard n != 1 else { return [[1]] }
    var result = Array(repeating: Array(repeating: 0, count: n), count: n)
    (0..<n).forEach { result[$0][$0] = 1 }

    return result
}