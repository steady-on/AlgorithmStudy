import Foundation

func solution(_ strList:[String], _ ex:String) -> String { strList.filter { !$0.contains(ex) }.joined() }