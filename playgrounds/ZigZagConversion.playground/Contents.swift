// Goal: Create a function that takes a number of letters and spreads to form a pyramid, rotated 90 degrese
// The pyramid should have a base level
import Foundation

//prefix operator ** : <# Precedence Group #>
//extension Double{
//    static prefix func ** (power : Double) -> Double {
//        return pow(self, power)
//    }
//}

var characters = ["Alpha", "Thetta", "Epsilon", "Omega", "Thi", "Shi", "Ultra", "Mega", "Megas"]
//func calcolaterUseReverseFactoriel(n : Int)->Int{
//    
//}
//func spreadLevel(array : [String]) -> [String]{
//    
//}

func getFactorial(sum : Int) -> Int{
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
getFactorial(sum: 10)



