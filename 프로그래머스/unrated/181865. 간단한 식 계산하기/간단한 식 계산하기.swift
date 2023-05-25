import Foundation

func solution(_ binomial:String) -> Int {
    let biomial = binomial.components(separatedBy: " ")

    let (a, b, c) = (Int(biomial[0])!, biomial[1], Int(biomial[2])!)

    switch b {
    case "+": return a + c
    case "-": return a - c
    default: return a * c
    }
}