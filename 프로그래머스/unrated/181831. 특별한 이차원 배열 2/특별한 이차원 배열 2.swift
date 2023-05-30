import Foundation

func solution(_ arr:[[Int]]) -> Int {
    for line in arr.indices {
        for row in arr[line].indices {
            if arr[line][row] != arr[row][line] {
                return 0
            }
        }
    }
    return 1
}