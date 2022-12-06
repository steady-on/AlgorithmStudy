import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    let spell: String = spell.sorted().joined()
    let dic: [String] = dic.map { String($0.sorted()) }
    
    return dic.contains(spell) ? 1 : 2
}