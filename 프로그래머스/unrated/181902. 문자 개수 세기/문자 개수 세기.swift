import Foundation

func solution(_ myString:String) -> [Int] {
    var dict = Dictionary(uniqueKeysWithValues: zip(Array("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"), Array(repeating: 0, count: 52)))
    
    myString.forEach { dict[$0]! += 1 }
    
    return dict.sorted { $0.key < $1.key }.map { $0.value }
}