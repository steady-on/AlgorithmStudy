import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let start = park.flatMap { $0.map { String($0) } }.firstIndex(of: "S")!
    let parkArr = park.map { $0.map { String($0) } }
    let col = parkArr.count, row = parkArr[0].count
    
    var x = start % col, y = start / row

    RouteLoop: for route in routes {
        let directionAndDistance = route.split(separator: " ")
        let (direction, distance) = (directionAndDistance[0], Int(directionAndDistance[1])!)
        var tempX = x, tempY = y
        
        switch direction {
        case "E" where x + distance < row: 
            tempX += distance
        case "W" where x - distance >= 0:
            tempX -= distance
        case "N" where y - distance >= 0:
            tempY -= distance
        case "S" where y + distance < col:
            tempY += distance
        default: continue RouteLoop
        }
        
        switch direction {
        case "E", "W":
            for i in (x < tempX ? x...tempX : tempX...x) {
                if parkArr[tempY][i] == "X" { continue RouteLoop }
            }
        default: // N or S
            for i in (y < tempY ? y...tempY : tempY...y) {
                if parkArr[i][tempX] == "X" { continue RouteLoop }
            }
        }

        (x, y) = (tempX, tempY)
    }
    
    return [y, x]
}