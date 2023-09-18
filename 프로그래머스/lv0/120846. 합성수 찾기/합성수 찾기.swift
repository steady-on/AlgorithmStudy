import Foundation

func solution(_ n:Int) -> Int {
    var count = 0
    
    for num in 1...n {
        count += isComposite(num) ? 1 : 0
    }
    
    return count
}

func isComposite(_ n: Int) -> Bool {
    let count = (1...n).filter { n % $0 == 0 }.count
    return count >= 3 ? true : false
}