import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    let buttons = [1: (-1, 3), 2: (0, 3), 3: (1, 3),
                   4: (-1, 2), 5: (0, 2), 6: (1, 2),
                   7: (-1, 1), 8: (0, 1), 9: (1, 1),
                   0: (0,0)]
    let mainHand = (hand == "left" ? "L" : "R")
    
    var leftHand = (-1, 0)
    var rightHand = (1, 0)
    var order = String()
    
    for number in numbers {
        switch number {
        case 1, 4, 7: 
            order += "L"
            leftHand = buttons[number]!
            continue
        case 3, 6, 9: 
            order += "R"
            rightHand = buttons[number]!
            continue
        default: break
        }
        
        let (x, y) = buttons[number]!
        let leftHandDistance = abs(x - leftHand.0) + abs(y - leftHand.1)
        let rightHandDistance = abs(x - rightHand.0) + abs(y - rightHand.1)
        
        if leftHandDistance == rightHandDistance {
            order += mainHand
            if mainHand == "L" { leftHand = (x, y) } else { rightHand = (x, y) }
            continue
        }
        
        if leftHandDistance < rightHandDistance {
            order += "L"
            leftHand = (x, y)
        } else {
            order += "R"
            rightHand = (x, y)
        }
    }
    
    return order
}