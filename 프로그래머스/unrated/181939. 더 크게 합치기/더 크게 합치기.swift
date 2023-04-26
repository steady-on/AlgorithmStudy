import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var one: Int = Int("\(a)\(b)")!
    var two: Int = Int("\(b)\(a)")!
    return one > two ? one : two
}