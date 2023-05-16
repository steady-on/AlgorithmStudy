import Foundation

func solution(_ myString:String, _ queries:[[Int]]) -> String {
    var myString = Array(myString).map { String($0) }
    
    for query in queries {
        let (x, y) = (query[0], query[1])
        myString.replaceSubrange(x...y, with: myString[x...y].reversed())
    }
    
    return myString.joined()
}