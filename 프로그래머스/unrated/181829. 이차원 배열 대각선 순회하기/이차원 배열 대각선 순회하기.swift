import Foundation

func solution(_ board:[[Int]], _ k:Int) -> Int {
    var result = 0
    
    for col in board.indices {
        for row in board[col].indices where col + row <= k {
            result += board[col][row]
        }
    }
    
    return result
}