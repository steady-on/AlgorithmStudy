func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
    var board = board.map { $0.map { String($0) } }
    var totalCount = 0
    var addedCount = 0
    
    while true {
        (board, addedCount) = pang(m, n, board)
        
        guard addedCount != 0 else { break }
        
        totalCount += addedCount
        board = letDownBlocks(m, n, board)
    }
    
    return totalCount
}

func pang(_ m:Int, _ n:Int, _ board:[[String]]) -> ([[String]], Int) {
    var removedPang = Array(repeating: Array(repeating: String(), count: n), count: m)
    var count = 0

    for row in 0 ..< m-1 {
        for col in 0 ..< n-1 {
            let square = [board[row][col], board[row][col+1], board[row+1][col], board[row+1][col+1]]
            let squareSet = Set(square)

            if squareSet != ["X"] && squareSet.count == 1 {
                for r in row...row+1 {
                    for c in col...col+1 {
                        guard removedPang[r][c] != "X" else { continue }
                        removedPang[r][c] = "X"
                        count += 1
                    }
                }

                continue
            }
            
            for r in row...row+1 {
                for c in col...col+1 {
                    guard removedPang[r][c] != "X" else { continue }
                    removedPang[r][c] = board[r][c]
                }
            }
        }
    }
    
    return (removedPang, count)
}

func letDownBlocks(_ m:Int, _ n:Int, _ board: [[String]]) -> [[String]] {
    var board = board
    
    for col in 0 ..< n {
        var column = [String]()
        
        for row in 0 ..< m {
            column.append(board[row][col])
        }
        
        column.sort {
            switch ($0, $1) {
            case ("X", "X"): return false
            case ("X", _): return true
            default: return false
            }
        }
        
        for row in 0 ..< m {
            board[row][col] = column[row]
        }
    }
    
    return board
}