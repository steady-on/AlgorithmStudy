import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var x:Int = 0
    var y:Int = 0
    
    for key in keyinput {
        switch key {
            case "right":
                if x < board[0]/2 {
                    x += 1
                }
            case "left":
                if x > -board[0]/2 {
                    x -= 1
                }
            case "up":
                if y < board[1]/2 {
                    y += 1
                }
            case "down":
                if y > -board[1]/2 {
                    y -= 1
                }
            default:
                break
        }
    }
    
    return [x, y]
}