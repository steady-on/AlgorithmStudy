import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var playersKey = Dictionary(uniqueKeysWithValues: zip(players, Array(1...players.count))) // 이름:등수
    var ranksKey = Dictionary(uniqueKeysWithValues: zip(Array(1...players.count), players)) // 등수:이름
    
    for call in callings {
        let presentRank = playersKey[call]! // 현재등수
        let prePlayer = ranksKey[presentRank - 1]! // 앞사람
        // 각 딕셔너리에서 call의 앞사람이랑 등수/이름 바꿔줌
        (playersKey[prePlayer], playersKey[call]) = (presentRank, presentRank-1)
        (ranksKey[presentRank], ranksKey[presentRank-1]) = (prePlayer, call)
    }
 
    return ranksKey.sorted { $0.key < $1.key }.map { $0.value }
}