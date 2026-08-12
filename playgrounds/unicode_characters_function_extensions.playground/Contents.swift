extension String.StringInterpolation {
    mutating func appendInterpolation(unicode scalar:Int) {
        appendInterpolation(Character(Unicode.Scalar(scalar) ?? Unicode.Scalar("")!))
    }
}

func createUnicodeCharacter(id : Int) -> String{
    var result : String = "\(unicode: id)"
    
    return result
}

let r = Int.random(in : 1...16000)
print(createUnicodeCharacter(id : r))
