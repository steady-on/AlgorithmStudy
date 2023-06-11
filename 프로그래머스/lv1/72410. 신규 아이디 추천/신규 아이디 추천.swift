import Foundation

func verifyId(_ id: String) -> Bool {
    let isCorrectLength = id.count >= 3 && id.count <= 15
    let isConsistOfCorrectCharacter = id.split { $0.isLowercase || $0.isNumber || ["-", "_", "."].contains(String($0)) }.filter { $0 != "" }.count == 0
    let isCorrectUsingPeriod = (id.hasPrefix(".") || id.hasSuffix(".") || id.contains("..")) == false
    
    return isCorrectLength && isConsistOfCorrectCharacter && isCorrectUsingPeriod
}

func makeRecommandId(_ id: String) -> String {
    let allowedCharacters = Dictionary(uniqueKeysWithValues: zip(Array("abcdefghijklmnopqrstuvwxyz0123456789-_."), Array(repeating: true, count: 39)))
    var recommandId = String()
    
    for char in id {
        guard recommandId.count < 15 else { break }
        if recommandId.isEmpty && char == "." { continue }
        if recommandId.last == "." && char == "." { continue }
        
        if char.isUppercase { 
            recommandId += String(char).lowercased()
            continue
        }
        
        if allowedCharacters[char] != nil { recommandId.append(char) }
    }
    
    if recommandId.last == "." { recommandId.removeLast() }
    if recommandId.isEmpty { recommandId = "aaa" }
    while recommandId.count < 3 { recommandId.append(recommandId.last!) }
    
    return recommandId
}

func solution(_ newId:String) -> String {    
    guard verifyId(newId) == false else { return newId }
    let recommandId = makeRecommandId(newId)

    return recommandId
}