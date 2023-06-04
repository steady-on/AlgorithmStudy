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
        if value > n * n { break }
        
        switch direction % 4 {
        case 0: row += 1 // right
        case 1: col += 1 // down
        case 2: row -= 1 // left
        default: col -= 1 // up
        } 
        
        switch direction % 4 {
        case 0 where row == n-1 || result[col][row+1] != 0:
            direction += 1
        case 1 where col == n-1 || result[col+1][row] != 0:
            direction += 1
        case 2 where row == 0 || result[col][row-1] != 0:
            direction += 1
        case 3 where col == 0 || result[col-1][row] != 0:
            direction += 1
        default: 
            break
        }
    }
    
    return result
}
