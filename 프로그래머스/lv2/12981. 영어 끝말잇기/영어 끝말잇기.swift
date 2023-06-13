import Foundation

func solution(_ n: Int, _ words: [String]) -> [Int] {
    var aleadySpoken = [String: Bool]()
    var turnCount = [Int: Int]()
    var lastCharacter = words[0].first
    
    for (index, word) in words.enumerated() {
        let turn = index % n + 1
        turnCount[turn, default: 0] += 1
        
        guard aleadySpoken[word] == nil && word.first == lastCharacter else { 
            return [turn, turnCount[turn]!] 
        }
        
        aleadySpoken[word] = true
        lastCharacter = word.last
    }
    
    return [0, 0]
}