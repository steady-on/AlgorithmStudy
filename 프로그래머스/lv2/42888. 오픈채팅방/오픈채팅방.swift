import Foundation

func solution(_ records: [String]) -> [String] {
    var users = [String: String]()
    var messageRecords = [(uid: String, entry: String)]()
    var messages = [String]()
    
    for record in records {
        let parts = record.components(separatedBy: " ")
        
        guard parts.count == 3 else {
            messageRecords.append((uid: parts[1], entry: parts[0]))
            continue
        }
        
        let (order, uid, nick) = (parts[0], parts[1], parts[2])
        
        switch order {
        case "Enter":
            messageRecords.append((uid: uid, entry: order))
            users[uid] = nick 
        case "Change":
            users[uid] = nick 
        default:
            break
        }
    }
    
    for (uid, entry) in messageRecords {
        var message = "\(users[uid]!)님이 "
        
        switch entry {
        case "Enter": message += "들어왔습니다."
        case "Leave": message += "나갔습니다."
        default: break
        }
        
        messages.append(message)
    }
    
    return messages
}