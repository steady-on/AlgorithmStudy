import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{ Int64(max(price*count*(count+1)/2 - money, 0)) }