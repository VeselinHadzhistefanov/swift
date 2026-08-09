// instructions:
// - create a function that determines the length and content of the longest common prefix string among the strings in an array of strings

let strings : [String] = ["apples", "oranges", "apple juice"]

struct matching_prefix_data{
    struct prefix_substring{
        var content : String
        var frequency : Int
        init(){
            content = ""
            frequency = 0
        }
    }
    var prefixes : [prefix_substring]
    func print (){
        for (i, v) in prefixes.enumerated(){
            Swift.print("prefix contains characters: \(v.content)")
            Swift.print("prefix was seen \(v.frequency) times")
        }
        if( prefixes.count == 0){
            Swift.print("failed to optain a full array")
        }
    }
    init(){
        prefixes = Array(repeating: prefix_substring(), count: 10)
    }
}
func get_prefix_data(){
    
}

func get_longest_common_prefix(strings: [String]){
    var max = 0
    var max_string_length = 0
    for (i, v) in strings.enumerated(){
        if v.count > max_string_length {
            max_string_length = v.count
        }
    }
    for i in 1...max_string_length{
        for (j, v) in strings.enumerated(){
            if(v.count >= i){
                let substring : String = v.substring(String.Index)
            }
        }
    }
    
}

let o = matching_prefix_data()
o.print()
