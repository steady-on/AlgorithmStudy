import Foundation

func solution(_ arr:[Int], _ idx:Int) -> Int {
    let filt = arr.enumerated().filter { $0.offset >= idx && $0.element == 1 }
    
    return filt.isEmpty ? -1 : filt[0].offset
}