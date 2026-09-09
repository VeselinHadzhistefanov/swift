func locally(scopeContents : ()->()){
    scopeContents()
}

// Definition of closure expressions:
// { (Arguments 1 - N) -> Return Type in
// -> # Statements (1)
// -> # Statements (2)
// -> # Statements (3)
// }
// i.e.:

var selector = {(arg1 : String, arg2 : Int) -> Int in
    var n = 0
    (arg1.prepareCharacterArray(arg1)).enumerated().forEach { e in
        n += e.element.isLetter ? 1 : 0
    }
    return n
}
extension String{
    func prepareCharacterArray(_ input : String) -> [Character]{
        var result = [Character]()
        for i in 0..<input.count{
            let offset : String.Index = input.index(input.startIndex, offsetBy: i)
            let character = input[offset] as Character
            result += [character]
        }
        return result
    }
}
print(selector("SofiSofinkiBuba", 5))
