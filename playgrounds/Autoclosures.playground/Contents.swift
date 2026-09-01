// Goals:
// - Demonstrate work with the autoclosures variant of the closure syntax, with an emphasis on clarity and consise coding.
// Tasks:
// 1. Create a "autoclosure" that is being passed to a function as a pre-defined variable.

// Task 1 - Autoclosure in a pre-defined variable
// Sub-tasks:
// a. Create a function, wich is able to make use of a "Closure" argument
// b. Provide an appropriate "Closure" variable (with no parameters), that satisfies the required "behavior" of the arguments in the function.

// a. Function which can make use of a closure variable without arguments
func establishRequiredRelationship(persons : [String]) -> Bool { // debt rejection
    var deptRejection = false
    for person in persons.enumerated(){
        if person.offset >= 3 {continue}
        let pattern = person.element.prefix(2)
        if pattern != "-1"{
            deptRejection = true
        }
    }
    return deptRejection
}

var names = ["Jonh", "Peter", "Lucian"]
let patternNames = {names[2] = "-1Lucian"; return names}

let deptResult = establishRequiredRelationship(persons: patternNames())
print(deptResult)




