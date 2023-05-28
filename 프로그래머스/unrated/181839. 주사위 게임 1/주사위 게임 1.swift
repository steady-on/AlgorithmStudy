import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var aIs: String { a % 2 == 1 ? "Odd" : "Even" }
    var bIs: String { b % 2 == 1 ? "Odd" : "Even" }
    
    switch (aIs, bIs) {
    case ("Odd", "Odd"): return a*a + b*b
    case ("Even", "Even"): return abs(a-b)
    default: return 2 * (a + b)
    }
}