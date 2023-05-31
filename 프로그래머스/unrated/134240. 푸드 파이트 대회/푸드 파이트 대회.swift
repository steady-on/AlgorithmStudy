import Foundation

func solution(_ food:[Int]) -> String {
    let foodFor1Person = food.map { $0 / 2 }.enumerated().filter { $0.element != 0 }
    let ready = foodFor1Person.map { String(repeating: String($0.offset), count: $0.element) }.joined()
    return ready + "0" + ready.reversed()
}