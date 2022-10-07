import Foundation

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    let mom: Int = num1 * num2
    let child: Int = denum1 * num2 + denum2 * num1
    
    for i in (1...mom).filter {mom % $0 == 0}.reversed() {
        if child % i == 0 {
            return [(child/i), (mom/i)]
        }
    }
    
    return [child, mom]
}