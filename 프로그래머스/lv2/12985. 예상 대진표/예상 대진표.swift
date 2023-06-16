import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int { 
    var round = String(n, radix: 2).count - 1
    var divider = n/2
    
    while (a-1)/divider == (b-1)/divider {
        divider /= 2
        round -= 1
    }
    
    return round
}
 