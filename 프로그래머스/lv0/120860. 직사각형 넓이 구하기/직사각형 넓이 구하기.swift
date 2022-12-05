import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var dots:[[Int]] = dots.sorted(by: {$0[0] < $1[0]})

    let length: Int = abs(dots[0][1] - dots[1][1])
    let width: Int = abs(dots[0][0] - dots[2][0])
    
    return (length * width)
}