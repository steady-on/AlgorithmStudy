import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    if balls == share { return 1 }
    let r: Int = (balls - share < share) ? (balls - share) : share
    
    let permut: Double = Array(repeating: Double(balls), count: r).enumerated().map {$1 - Double($0)}.reduce(1, *)
    let rFact: Double = Array(1...r).reduce(permut, {$0 / Double($1)})
    
    return Int(rFact)

}
