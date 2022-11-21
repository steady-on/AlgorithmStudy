import Foundation

func solution(_ myString:String, _ num1:Int, _ num2:Int) -> String {
    var myString = Array(myString)
    myString.swapAt(num1, num2)

    return String(myString)
}