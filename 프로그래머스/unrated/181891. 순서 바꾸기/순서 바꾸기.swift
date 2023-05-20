import Foundation

func solution(_ numList:[Int], _ n:Int) -> [Int] { numList.suffix(numList.count-n) + numList.prefix(n) }