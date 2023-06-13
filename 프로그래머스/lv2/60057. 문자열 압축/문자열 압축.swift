import Foundation

func solution(_ s:String) -> Int {
    guard s.count != 1 else { return 1 }
    
    var numberWithCount = [Int]()
    
    for number in 1...(s.count/2) {
        var s = s
        var temp = String()
        var unit = String()
        var count = 0

        while s.count >= number {
            guard unit.isEmpty == false else {
                unit = String(s.prefix(number))
                continue
            }
            
            if s.hasPrefix(unit) {
                count += 1
                s.removeFirst(number)
                continue
            }
            
            temp += "\(count > 1 ? "\(count)" : "")\(unit)"
            unit = ""
            count = 0
        }
        
        temp += "\(count > 1 ? "\(count)" : "")\(unit)\(s)"
        numberWithCount.append(temp.count)
    }
    
    let minNumber = numberWithCount.min()!
    
    return minNumber < s.count ? minNumber : s.count
}