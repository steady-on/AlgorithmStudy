import Foundation

func solution(_ iDPw:[String], _ db:[[String]]) -> String {
    if db.contains(iDPw) {
        return "login"
    } else if db.map { $0[0] }.contains(iDPw[0]) {
        return "wrong pw"
    } else {
        return "fail"
    }
}