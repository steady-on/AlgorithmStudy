import Foundation

func solution(_ n:Int) -> Int {
    let fact = (1...10).reversed().map { (1...$0).reduce(1, *) }
    let factDict = zip((1...10).reversed(), fact)

    for (key, value) in factDict {
        if n >= value {
            return key
        }
    }
    return 0
}