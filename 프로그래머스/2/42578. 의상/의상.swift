import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var clothesDic = [String:Int]()
        
    for clothe in clothes {
        guard let type = clothe.last else { break }
        clothesDic[type, default: 1] += 1
    }
    
    let cases = clothesDic.values.reduce(1, *)
    
    return cases - 1
}