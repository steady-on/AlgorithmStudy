import Foundation

func solution(_ emergency:[Int]) -> [Int] { 
    let dictEmergency = Dictionary(uniqueKeysWithValues: zip(emergency.sorted(by: >), 1...emergency.count))
    return emergency.compactMap { dictEmergency[$0] }
}