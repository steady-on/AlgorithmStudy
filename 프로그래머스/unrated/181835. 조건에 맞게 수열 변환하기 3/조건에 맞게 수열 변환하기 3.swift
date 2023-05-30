import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] { k % 2 == 1 ? arr.map { $0 * k } : arr.map { $0 + k } }