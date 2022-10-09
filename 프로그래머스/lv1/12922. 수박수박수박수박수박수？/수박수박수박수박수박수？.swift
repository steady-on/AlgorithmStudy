func solution(_ n:Int) -> String { String(repeating: "수박", count: (n/2)) + (n % 2 == 1 ? "수" : "") }
