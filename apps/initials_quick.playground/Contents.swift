var initials_str_sequence = ""
func get_character_row (character:String, row: Int) -> String{
    var character_result : [String] = Array(repeating: "", count: 7)
    switch character{
    case("v"):
        character_result[0] = "V   V"
        character_result[1] = "V   V"
        character_result[2] = "V   V"
        character_result[3] = "V   V"
        character_result[4] = "V   V"
        character_result[5] = " V V "
        character_result[6] = "  V  "
    break
    case("h"):
        character_result[0] = "H   H"
        character_result[1] = "H   H"
        character_result[2] = "H   H"
        character_result[3] = "HHHHH"
        character_result[4] = "H   H"
        character_result[5] = "H   H"
        character_result[6] = "H   H"
        break
    default:
    break
    }
    return character_result[row]
}

func create_initials_sequence(initials: [String]) -> String{
    var initials_sequence = ""
    var initials_rows: [String] = Array(repeating: "", count: 7)
    var initials_characters: [[String]] = Array(repeating: Array(repeating: "", count: 7), count: 2)

    for (i, initial) in initials.enumerated(){
        for (j, _) in initials_characters[0].enumerated(){
            initials_characters[i][j] = get_character_row(character:initial, row:j)
        }
    }
    
    for (i, character) in initials_characters[0].enumerated(){
        for (j, row) in initials_characters.enumerated(){
            initials_sequence += initials_characters[i][j] + " "
        }
        initials_sequence += "\n"
    }
    return initials_sequence
}
let original_initials = ["v", "h"]
print(create_initials_sequence(initials:original_initials))
