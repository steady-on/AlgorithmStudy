import Foundation

func solution(_ numList:[Int]) -> [Int] { [numList.filter {$0%2==0}.count, numList.filter {$0%2==1}.count] }