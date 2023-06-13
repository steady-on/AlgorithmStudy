import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let maxYellowShortSide = Int(Double(yellow).squareRoot())
    
    for yellowShortSide in 1...maxYellowShortSide where yellow % yellowShortSide == 0 {
        let yellowLongSide = yellow / yellowShortSide

        guard (yellowShortSide+2) * (yellowLongSide+2) == (yellow + brown) else { continue }
        
        return [(yellowLongSide+2), (yellowShortSide+2)]
    }
    
    return []
}