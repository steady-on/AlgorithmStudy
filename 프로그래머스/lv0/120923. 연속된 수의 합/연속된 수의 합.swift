import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    let result: Int = total/num - num/2
    return num%2==0 ? Array((result+1)...(result+num)) : Array(result...(result+num-1))
}