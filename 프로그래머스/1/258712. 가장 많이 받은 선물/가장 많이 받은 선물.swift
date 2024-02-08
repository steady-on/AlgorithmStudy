import Foundation

func calculateRelation(_ friendsDic:[String:Int], _ gifts:[String], count: Int) -> ([[Int]], [Int]) {    
    var giftIndexes = Array(repeating: 0, count: count)
    var giftTable = Array(repeating: giftIndexes, count: count)
    
    for gift in gifts {
        let parts = gift.split(separator: " ")
        
        guard let giver = parts.first, let receiver = parts.last,
              let giverIndex = friendsDic[String(giver)], let receiverIndex = friendsDic[String(receiver)] else { break }
        
        giftIndexes[giverIndex] += 1
        giftIndexes[receiverIndex] -= 1
        giftTable[giverIndex][receiverIndex] += 1
    }
    
    return (giftTable, giftIndexes)
}

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    let friendsDic = Dictionary(uniqueKeysWithValues: zip(friends, friends.indices))
    let (giftTable, giftIndexes) = calculateRelation(friendsDic, gifts, count: friends.count)

    var nextMonth = Array(repeating: 0, count: friends.count)
    
    for friend in friends {
        guard let index = friendsDic[friend] else { break }
        
        for other in friends.indices where index < other {
            let giftDiff = giftTable[index][other] - giftTable[other][index]
            
            guard giftDiff != 0 else {
                let indexDiff = giftIndexes[index] - giftIndexes[other]
                
                if indexDiff > 0 {
                    nextMonth[index] += 1
                } else if indexDiff < 0 {
                    nextMonth[other] += 1
                }
                
                continue
            }
            
            if giftDiff > 0 { // 더 많이 줬음
                nextMonth[index] += 1
                continue
            }
            
            nextMonth[other] += 1
        }
    }
    
    return nextMonth.max()!
}