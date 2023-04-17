extension String {
    subscript(_ index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}

func solution(_ strings:[String], _ n:Int) -> [String] {
    strings.sorted {
        if $0[n] == $1[n] {
            return $0 < $1
        } else {
            return $0[$0.index($0.startIndex, offsetBy: n)...] < $1[$1.index($0.startIndex, offsetBy: n)...]
        }
    }
}