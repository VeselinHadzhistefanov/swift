import UIKit
struct Prepared{
    struct Sequence{
        struct Character{
            var slices: Array<String>
            init(){
                slices = Array<String>(repeating: "", count: 5)
            }
        }
        var characters: Array<Character>
        init(){
            characters = Array<Character>(repeating: Character(), count: 5)
        }
    }
    var sequence: Sequence
    init() {
        sequence = Sequence()
    }
}
// options:
// a: add getter / setter method to struct
// b: create a method for iterating through the class members and setting the values of each string part

func set_initial(a: String, n: Int, o: Prepared) -> Prepared {
    var oe = o // prepared
    var sq = Array<String>(repeating: "", count: 5) // Array<String>
    switch a{
    case "v":
        sq[0] = "#       #"
        sq[1] = " #     # "
        sq[2] = "  #   #  "
        sq[3] = "   # #   "
        sq[4] = "    #    "
        break
    case "y":
        sq[0] = " #     # "
        sq[1] = "  #   #  "
        sq[2] = "   # #   "
        sq[3] = "    #    "
        sq[4] = "    #    "
        break
    case "h":
        sq[0] = "#       #"
        sq[1] = "#       #"
        sq[2] = "#########"
        sq[3] = "#       #"
        sq[4] = "#       #"
        break
    default:
        break
    }
    

    for (i, slice) in oe.sequence.characters[n].slices.enumerated(){
        oe.sequence.characters[n].slices[i] = sq[i]
    }
    return oe
}

var prep = Prepared()

prep = set_initial(a: "v", n: 0, o: prep)
prep = set_initial(a: "h", n: 1, o: prep)

var characters = prep.sequence.characters
var output_sequnces = ""

characters.enumerated().forEach{character in
    if (character.offset < 2){
        character.element.slices.enumerated().forEach{ slice in
            characters[character.offset+3].slices[slice.offset] = slice.element + "\n"
        }
    }
}
characters.enumerated().forEach{character in
    if(character.offset < 2){
        character.element.slices.enumerated().forEach{slice in
            characters[2].slices[slice.offset] += slice.element
        }
    }
    if(character.offset == 3){
        character.element.slices.enumerated().forEach{slice in
            characters[2].slices[slice.offset] += "\n"
        }
    }
    if(character.offset == 4){
        characters[2].slices.enumerated().forEach{slice in
            output_sequnces += slice.element
        }
    }
}
print(output_sequnces)
