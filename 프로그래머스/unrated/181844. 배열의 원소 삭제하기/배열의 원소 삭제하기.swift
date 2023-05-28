import Foundation

func solution(_ arr:[Int], _ deleteList:[Int]) -> [Int] { arr.filter { !deleteList.contains($0) } } 