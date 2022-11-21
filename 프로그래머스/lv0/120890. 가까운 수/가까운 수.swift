import Foundation

func solution(_ array:[Int], _ n:Int) -> Int { 
    let array = array.sorted()
    let absArray: [Int] = array.map {abs($0-n)}
    let index: Int = absArray.firstIndex(of: absArray.min()!)!
    
    return array[index]
}