import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var players = players
    var ranks = Dictionary(uniqueKeysWithValues: zip(players, 0..<players.count)) // 이름:인덱스
    
    for call in callings {
        let presentIndex = ranks[call]! // 현재 등수
        let prePlayer = players[presentIndex - 1] // 앞의 플레이어
        
        players.swapAt(presentIndex, presentIndex-1)
        (ranks[call], ranks[prePlayer]) = (presentIndex-1, presentIndex)
    }

    return players
}