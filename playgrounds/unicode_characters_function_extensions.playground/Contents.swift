extension String.StringInterpolation {
    mutating func appendInterpolation(unicode scalar:Int) {
        appendInterpolation(UnicodeScalar(scalar))
    }
}

func createUnicodeCharacter(id : Int) -> Character{
    var result : Character = Character("\(unicode: id)")
    
    return result
}

print(createUnicodeCharacter(id : 12312))
