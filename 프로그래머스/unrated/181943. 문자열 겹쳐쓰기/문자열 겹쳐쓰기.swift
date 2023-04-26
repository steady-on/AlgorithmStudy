import Foundation

func solution(_ myString: String, _ overwriteString: String, _ s: Int) -> String {
    var myString = Array(myString)
    myString.replaceSubrange(s...(overwriteString.count+s-1), with: overwriteString)
    return String(myString)
}