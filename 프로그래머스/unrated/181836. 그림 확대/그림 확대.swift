import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    var result = [String]()
    
    
    for line in picture {
        var newLine = ""
        var temp = ""
        
        for pixel in line {
            if temp.last == pixel {  
                temp.append(pixel)
                continue
            }
            
            for _ in 1...k { newLine += temp }
            temp = String(pixel)
        }
        for _ in 1...k { newLine += temp }
        for _ in 1...k { result.append(newLine) }
    }
    
    return result
}