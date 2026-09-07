// Method for optaining fractional part:
// Fractional Part = Number - (Number -> Int -> Double(losing fractional part)
// Why this works:
// Right side of subtraction loses fractional part in conversion, while left side retains it
// Result is the value of the fractinal part
func getFractionalPart(n : Double) -> Double{
    return n - Double(Int(n))
}

let n1 = 5.69
// Float vs Double in number initialisation by default:
print(type(of: n1))



