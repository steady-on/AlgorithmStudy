import Foundation

func solution(_ cap:Int, _ n:Int, _ deliveries:[Int], _ pickups:[Int]) -> Int64 {
    var deliveries = deliveries
    var pickups = pickups
    var totalDistance: Int64 = 0
    
    var index = deliveries.endIndex - 1
    var delieverRemain = 0
    var pickupRemain = 0
    
    while index >= 0 {
        let deliver = deliveries[index]
        let pickup = pickups[index]
        
        guard deliver != 0 || pickup != 0 else {
            index -= 1
            continue
        }
        
        if delieverRemain < deliver || pickupRemain < pickup {
            delieverRemain += cap
            pickupRemain += cap
            totalDistance += Int64(index + 1)
            continue
        }
        
        delieverRemain -= deliver
        pickupRemain -= pickup
        index -= 1
    }
    
    return totalDistance * 2
}