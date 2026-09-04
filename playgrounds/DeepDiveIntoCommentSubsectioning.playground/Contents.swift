func findNeerestRootNest(a : Int, b : Int) -> Int {
    var root : Optional<Int> = nil
    
    let max = max(a , b)
    let primes = lookUpPrimesUpTo(max : max)
    var hasCommonPrimes = false
    var a_moving : Int = a
    var b_moving : Int = b
    for i in 0..<primes.count{
        let denominator = primes[i]
        var denominatorIsCommon = true
        if (a_moving % denominator != 0){
            denominatorIsCommon = false
        } else{
            a_moving /= denominator
        }
        if (b_moving % denominator != 0){
            denominatorIsCommon = false
        } else{
            b_moving /= denominator
        }
        if(denominatorIsCommon){
            return denominator
        }
    }
    var result = 1
    if (root == nil){
        result = 1
    }
    return result
}

func lookUpPrimesUpTo(max : Int) -> [Int]{
    var primes : [Int] = []
    for i in 2..<max {
        if isPrime(num : i) {
            primes += [i]
        }
    }
    return primes
}

func isPrime(num : Int) -> Bool{
    for i in 2..<num{
        if num % i == 0 {
            return false
        }
    }
    return true
}

print(lookUpPrimesUpTo(max: 100))
print(findNeerestRootNest(a : 25, b : 15))
