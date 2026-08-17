import Foundation
let desc = """
This program will introduce the concept of random numbers in the context of swift, as a programming language and assess it's strengths and weaknesses for casual programmign as well as more cumbersome tasks such as compiling larger data sets of string meterials exploiting the random function as a generating method and further explorations in the direction of effeiciency and optimization.
"""
print(desc)

func next_random_int(max : Int) -> Int {
    let ns_range = NSRange(location: 0, length: max)
    let bounds = Range(ns_range)
    let random_int = Int.random(in: bounds ?? Range(0...1))
    print("generated random number is : \(random_int)")
    return random_int
}

func produce_substring(location : Int, length : Int) -> String {
    
    return ""
}

let int_bounds = Range(uncheckedBounds: (lower: 0, upper: 15))

let random_int = next_random_int(max : 15)

//print(desc.)

