import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    let people = Dictionary(uniqueKeysWithValues: zip(name, yearning))
    let scores = photo.map { $0.map { people[$0] ?? 0 }.reduce(0, +) }
    
    return scores
}