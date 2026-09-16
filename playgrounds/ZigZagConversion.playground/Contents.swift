// Goal: Create a function that takes a number of letters and spreads to form a pyramid, rotated 90 degrese
// The pyramid should have a base level
import Foundation

// Goal 1: Create a function that gets the number of integers starting from 1 that sum up to certain number

func countForSum(sum : Int) -> Int{
    var result = 0.0
    var rSide : Double = Double(sum) * 2.0 + 0.25
    rSide = pow(rSide, 0.5) - 0.5
    print(rSide)
    
    if (rSide - Double(Int(rSide)) == 0.0){
        return Int(rSide)
    } else {
        return 0
    }
}
var sum : Int = 1 + 2 + 3 + 4
print(sum)
//print(countForSum(sum :sum))

// Goal 2: Create a function that returns the number of integers to create a sum with the remainder appended to it

func reverseSumWithRemainder(sum: Int) -> (n : Double, remainder : Double){
    var rSide : Double = Double(sum) * 2.0 + 0.25
    rSide = pow(rSide, 0.5) - 0.5
    var n = Double(Int(rSide))
    var remainder = rSide - n
    remainder = Double(sum) - (n * (n + 1)/2.0)
    
    return (n, remainder)
}
var nonExactSum = 12
print(reverseSumWithRemainder(sum : nonExactSum))

// Goal 3: Create a prefix perator that computes an exponentiation operation

//prefix operator ** : <# Precedence Group #>
//extension Double{
//    static prefix func ** (power : Double) -> Double {
//        return pow(self, power)
//    }
//}


// Goal 4: Create a pattern with the strings using the reverse sum function
var characters = ["Alpha", "Thetta", "Epsilon", "Omega", "Thi", "Shi", "Ultra", "Mega", "Megas"]

//func calcolaterUseReverseFactoriel(n : Int)->Int{
//
//}
//func spreadLevel(array : [String]) -> [String]{
//
//}





