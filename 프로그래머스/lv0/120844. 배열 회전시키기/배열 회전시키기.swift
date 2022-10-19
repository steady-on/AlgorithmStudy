import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] { 
    if direction == "right" {
        return (-1..<numbers.count-1).map { numbers[(($0 + numbers.count)%numbers.count)] }
    } else {
        return (0..<numbers.count).map { numbers[(($0 + 1)%numbers.count)] } 
    }
}