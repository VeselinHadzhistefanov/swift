// Unicode character in a String
let unicodeChar_String : String = "\u{12312}" // in a String
let unicodeChar_Character : Character = "\u{12312}" // in a Character

// Dynamicaly generate unicode character
let r = Int.random(in : 0...9999)
let assignedCharacter_String : String = #"\u{"# + "\(r)" + #"}"#
let reassignedUnicodeCharacter_String : String = "\(assignedCharacter_String)"
print(reassignedUnicodeCharacter_String)
