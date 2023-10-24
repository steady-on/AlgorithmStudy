import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var players = players
    var ranks = Dictionary(uniqueKeysWithValues: zip(players, 0...)) // 이름:인덱스
    
    callings.forEach { calling in
        let presentIndex = ranks[calling]! // 현재 등수
        let prePlayer = players[presentIndex - 1] // 앞의 플레이어
        
        players.swapAt(presentIndex, presentIndex-1) // 자리 바꿔줌
        (ranks[calling], ranks[prePlayer]) = (presentIndex-1, presentIndex) // ranks 값도 바꿔줌
    }

    return players
}