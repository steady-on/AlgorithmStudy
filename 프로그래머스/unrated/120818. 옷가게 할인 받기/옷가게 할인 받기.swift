import Foundation

func solution(_ price:Int) -> Int {
    switch price / 10000 {
        case 10..<30:
            return (Int(Double(price) * 0.95))
        case 30..<50:
            return (Int(Double(price) * 0.9))
        case 50...100:
            return (Int(Double(price) * 0.8))
        default:
            return price
    }
}