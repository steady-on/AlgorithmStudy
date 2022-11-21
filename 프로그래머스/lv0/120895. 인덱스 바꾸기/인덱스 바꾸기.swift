import Foundation

func solution(_ myString:String, _ num1:Int, _ num2:Int) -> String {
    var myString = Array(myString)
    (myString[num1], myString[num2]) = (myString[num2], myString[num1])

    return String(myString)
}