func solution(_ phoneNumber:String) -> String { String(repeating: "*", count: (phoneNumber.count-4)) + phoneNumber.suffix(4) }
