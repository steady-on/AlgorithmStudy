import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var x:Int = 0
    var y:Int = 0
    
    for key in keyinput {
        switch key {
            case "right":
                (x < board[0]/2) ? (x += 1) : (x += 0)
            case "left":
                (x > -board[0]/2) ? (x -= 1) : (x -= 0)
            case "up":
                (y < board[1]/2) ? (y += 1) : (y += 0)
            case "down":
                (y > -board[1]/2) ? (y -= 1) : (y -= 0)
            default:
                break
        }
    }
    
    return [x, y]
}