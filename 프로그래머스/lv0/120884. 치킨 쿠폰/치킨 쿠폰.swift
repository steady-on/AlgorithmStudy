import Foundation

func solution(_ chicken: Int) -> Int {
    var coupon: Int = chicken
    var remain: Int = 0
    var service: Int = 0
    
    while coupon > 0 {
        if remain >= 10 {
            coupon += remain / 10 * 10
            remain %= 10
        }
        
        remain += coupon % 10
        service += coupon / 10
        coupon = coupon / 10
    }
    
    return service + (remain / 10)
}