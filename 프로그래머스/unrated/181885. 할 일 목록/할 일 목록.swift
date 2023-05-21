import Foundation

func solution(_ todoList:[String], _ finished:[Bool]) -> [String] { zip(finished, todoList).filter { $0.0 == false }.map { $0.1 } }