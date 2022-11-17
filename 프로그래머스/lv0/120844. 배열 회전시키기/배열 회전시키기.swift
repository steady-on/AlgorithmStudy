import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var numbers: [Int] = numbers
    
    if direction == "right" {
        numbers.insert(numbers.removeLast(), at: 0)
    } else {
        numbers.append(numbers.removeFirst())
    }
    
    return numbers
}