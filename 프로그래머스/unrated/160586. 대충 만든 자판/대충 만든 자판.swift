import Foundation

func rememberKeymapping(_ keymap: [String]) -> [Character:Int] {
    var remember = [Character:Int]()
    
    for button in keymap {
        for (num, char) in zip(1..., button) {
            guard let numberOfPress = remember[char] else {
                remember[char] = num
                continue
            }
            
            if numberOfPress > num { remember[char] = num }
        }
    }
    
    return remember
}

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    let remember = rememberKeymapping(keymap)
    var result = [Int]()

    TargetLoop: for target in targets {
        var count = 0
        
        for char in target {
            guard let numberOfPress = remember[char] else { 
                result.append(-1)
                continue TargetLoop
            }

            count += numberOfPress
        }
        
        result.append(count)
    }
    
    return result
}