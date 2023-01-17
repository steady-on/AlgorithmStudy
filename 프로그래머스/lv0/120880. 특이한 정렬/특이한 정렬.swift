import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] { numlist.sorted { (abs($0 - n), -$0) < (abs($1 - n), -$1) } }