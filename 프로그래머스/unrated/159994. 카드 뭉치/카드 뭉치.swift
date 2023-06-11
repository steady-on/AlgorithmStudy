import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var (cards1, cards2) = (cards1, cards2)
    
    for str in goal {
        if let first = cards1.first, first == str { 
            cards1.removeFirst()
            continue
        }
        
        if let first = cards2.first, first == str { 
            cards2.removeFirst()
            continue
        }
        
        return "No"
    }
    
    return "Yes"
}