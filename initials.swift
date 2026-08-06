import UIKit

var initials = ""
var slices = Array(repeating: Array(repeating: "", count:4), count: 5)
slices[0][0] = "#     #"
slices[0][1] = " #   # "
slices[0][2] = "  # #  "
slices[0][3] = "   #   "

slices.enumerated().forEach{character in
    if (character.offset < 2){
        character.element.enumerated().forEach{ slice in
            slices[character.offset+3][slice.offset] = slice.element + "\n"
        }
    }
}
slices.enumerated().forEach{character in
    if(character.offset < 2){
        character.element.enumerated().forEach{slice in
            slices[2][slice.offset] += slice.element
        }
    }
    if(character.offset == 3){
        character.element.enumerated().forEach{slice in
            slices[2][slice.offset] += "\n"
        }
    }
    if(character.offset == 4){
        slices[2].enumerated().forEach{slice in
            initials += slice.element
        }
    }
}
print(initials)
