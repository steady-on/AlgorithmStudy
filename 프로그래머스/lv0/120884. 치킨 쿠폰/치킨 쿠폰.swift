import Foundation

func solution(_ chicken: Int) -> Int {
    var coupon: Int = chicken
    var service: Int = 0
    
    while coupon / 10 != 0 {
        var temp: Int = coupon / 10
        service += temp
        coupon = coupon % 10 + temp
    }
    
    return service
}