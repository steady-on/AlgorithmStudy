import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board = board
    let colMax = board.count

    var basket = [Int]()
    var pang = 0
    
    for row in moves.map { $0 - 1 } {
        for col in 0..<colMax where board[col][row] != 0 {
            let doll = board[col][row]
            if let last = basket.last, doll == last {
                pang += 2
                basket.removeLast()
            } else {
                basket.append(doll)
            }
            board[col][row] = 0
            break
            
        }
    }
    
    return pang
}