func solution(_ n:Int64) -> Int64 { Int64(String(n).sorted(by: >).map {String($0)}.joined())! }
