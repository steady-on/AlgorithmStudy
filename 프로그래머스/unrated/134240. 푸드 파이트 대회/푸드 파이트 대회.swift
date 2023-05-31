import Foundation

func solution(_ food:[Int]) -> String {
    var result = ""
    
    for (offset, element) in food.enumerated() {
        result += String(repeating: String(offset), count: element/2)
    }
    
    return result + "0" + result.reversed()
}