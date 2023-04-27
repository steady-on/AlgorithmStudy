import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    let controlSet: [Character:Int] = ["w": 1, "s": -1, "d": 10, "a": -10]
    
    return control.reduce(n) { $0 + controlSet[$1]! }
}