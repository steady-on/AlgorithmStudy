import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var dots:[[Int]] = dots.sorted(by: {($0[0], $0[1]) < ($1[0], $1[1])})

    let length: Int = abs(dots.first![1] - dots.last![1])
    let width: Int = abs(dots.first![0] - dots.last![0])
    
    return (length * width)
}