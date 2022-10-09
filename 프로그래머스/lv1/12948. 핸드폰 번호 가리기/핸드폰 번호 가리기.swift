func solution(_ phoneNumber:String) -> String { String(repeating: "*", count: (phoneNumber.count-4)) + String(Array(phoneNumber)[(phoneNumber.count-4)...])}
