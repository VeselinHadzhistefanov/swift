// Unicode character inside a string:
let unicodeChar_String : String = "\u{12312}" // in a String
let unicodeChar_Character : Character = "\u{12312}" // in a Character

// Dynamicaly generated unicode character:
let r = Int.random(in : 0...99999)
let assignedCharacter_String : String = "\u{\(r))}"
let assignedCharacter : Character = assignedCharacter_String as Character

