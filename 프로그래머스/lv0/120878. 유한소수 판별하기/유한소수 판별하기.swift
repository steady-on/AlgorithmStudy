import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let numos: [Int] = (1...a).filter { a % $0 == 0 }
    var denum: Int = b
    
    while denum % 2 == 0 {
        denum /= 2
    }
    
    while denum % 5 == 0 {
        denum /= 5
    }

    return numos.contains(denum) ? 1 : 2
}