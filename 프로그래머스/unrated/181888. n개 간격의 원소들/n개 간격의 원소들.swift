import Foundation

func solution(_ numList:[Int], _ n:Int) -> [Int] { stride(from:0, to: numList.count, by: n).map {numList[$0]} }