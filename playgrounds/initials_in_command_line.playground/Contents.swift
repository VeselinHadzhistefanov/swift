import UIKit

var prepared_sequence = ""
var characters = Array(repeating: Array(repeating: "", count:4), count: 5)
characters[0][0] = "#     #"
characters[0][1] = " #   # "
characters[0][2] = "  # #  "
characters[0][3] = "   #   "



characters.enumerated().forEach{character in
    if (character.offset < 2){
        character.element.enumerated().forEach{ slice in
            characters[character.offset+3][slice.offset] = slice.element + "\n"
        }
    }
}
characters.enumerated().forEach{character in
    if(character.offset < 2){
        character.element.enumerated().forEach{slice in
            characters[2][slice.offset] += slice.element
        }
    }
    if(character.offset == 3){
        character.element.enumerated().forEach{slice in
            characters[2][slice.offset] += "\n"
        }
    }
    if(character.offset == 4){
        characters[2].enumerated().forEach{slice in
            prepared_sequence += slice.element
        }
    }
}
print(prepared_sequence)
