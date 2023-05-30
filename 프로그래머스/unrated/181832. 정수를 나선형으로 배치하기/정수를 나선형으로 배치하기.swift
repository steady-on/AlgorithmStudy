import Foundation

func solution(_ n:Int) -> [[Int]] {
    var result = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    var value = 1
    var direction = 0 // 0: ->, 1:　아래로, 2: <-, 3: 위로
    var col = 0
    var row = 0
    
    while value <= n * n {
        result[col][row] = value
        value += 1
        
        switch direction % 4 {
        case 0: // right
            if row < n-1 && result[col][row+1] == 0 {
                row = (row + 1) % n
            } else {
                direction += 1
                col = (col + 1) % n
            }
        case 1: // down
            if col < n-1 && result[col+1][row] == 0 {
                col = (col + 1) % n
            } else {
                direction += 1
                row = (row - 1) % n
            }
        case 2: // left
            if row > 0 && result[col][row-1] == 0 {
                row = (row - 1) % n
            } else {
                direction += 1
                col = (col - 1) % n
            }
        default: // up
            if col > 0 && result[col-1][row] == 0 {
                col = (col - 1) % n
            } else {
                direction += 1
                row = (row + 1) % n
            }
        }
    }
    
    return result
}
