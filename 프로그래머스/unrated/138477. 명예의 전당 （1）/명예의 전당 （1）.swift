import Foundation

func solution(_ k:Int, _ scores:[Int]) -> [Int] {
    var worstScores = [Int]()
    var hallOfFame = [Int]()
    
    for score in scores {
        hallOfFame.append(score)
        hallOfFame.sort()
        
        if hallOfFame.count > k {
            hallOfFame.remove(at: 0)
        }
        
        worstScores.append(hallOfFame[0])
    }
    
    return worstScores
}