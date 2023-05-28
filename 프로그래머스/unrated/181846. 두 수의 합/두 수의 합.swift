import Foundation

func solution(_ a:String, _ b:String) -> String {
    let length = max(a.count, b.count)

    let (bigger, smaller) = a.count >= b.count ? (a, b) : (b, a)

    let biggerArr = Array(bigger).reversed().compactMap { Int(String($0)) }
    var smallerArr = Array(smaller).reversed().compactMap { Int(String($0)) }
    
    while smallerArr.count < length { smallerArr.append(0) }

    var calc = [String]()
    var carry = 0
    
    for index in biggerArr.indices {
        let temp = biggerArr[index] + smallerArr[index] + carry
        
        if temp < 10 {
            calc.insert(String(temp), at: 0)
            carry = 0
        } else {
            calc.insert(String(temp % 10), at: 0)
            carry = temp / 10
        }
    }
    
    if carry != 0 { calc.insert(String(carry), at: 0) }
    
    return calc.joined()
}
