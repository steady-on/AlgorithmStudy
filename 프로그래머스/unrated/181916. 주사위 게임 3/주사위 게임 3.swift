import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    let diceArr: [Int] = [a, b, c, d].sorted()
    let numCnt = Set(diceArr).count
    
    switch numCnt {
    case 1:
        return 1111 * diceArr[0]
    case 2:
        let front = (diceArr[0] == diceArr[1])
        let rear = (diceArr[2] == diceArr[3])
        switch (front, rear) {
        case (true, false):
            let temp = 10 * diceArr[0] + diceArr[3]
            return temp * temp
        case (false, true):
            let temp = 10 * diceArr[3] + diceArr[0]
            return temp * temp
        default: // true, true
            return ((diceArr[1] + diceArr[2]) * abs(diceArr[1] - diceArr[2]))
        }
    case 3:
        let front = (diceArr[0] == diceArr[1])
        let rear = (diceArr[2] == diceArr[3])
        switch (front, rear) {
        case (true, false): return diceArr[2] * diceArr[3]
        case (false, false): return diceArr[0] * diceArr[3]
        default: return diceArr[0] * diceArr[1]
        }
    default:
        return diceArr.min()!
    }
}