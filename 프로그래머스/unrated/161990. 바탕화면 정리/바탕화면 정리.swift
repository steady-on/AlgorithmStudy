import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    let wallpaper = wallpaper.map { $0.map { String($0) } }
    var (lux, luy, rdx, rdy) = (51, 51, -1, -1)
    
    for col in wallpaper[0].indices {
        for row in wallpaper.indices where wallpaper[row][col] == "#" {
            if lux >= row { lux = row }
            if luy >= col { luy = col }
            if rdx <= row + 1 { rdx = row + 1 }
            if rdy <= col + 1 { rdy = col + 1 }
        }
    }
    
    return [lux, luy, rdx, rdy]
}