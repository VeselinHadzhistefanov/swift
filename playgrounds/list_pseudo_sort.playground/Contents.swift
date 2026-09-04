class WorstCase{
    var brakeableBefore = false
    var checkForMinusValues = true
    var checkForMissingData = true
    var offloadsLimitApproached = true
    init(brakeableBefore: Bool = false, checkForMinusValues: Bool = true, checkForMissingData: Bool = true, offloadsLimitApproached: Bool = true) {
        self.brakeableBefore = brakeableBefore
        self.checkForMinusValues = checkForMinusValues
        self.checkForMissingData = checkForMissingData
        self.offloadsLimitApproached = offloadsLimitApproached
    }
}

// Check all four condition
func getWorstCaseFor(sample : [Int])-> WorstCase{
    var brakeableBefore = isBreakableBefore(sample : sample)
    var checkForMinusValues = isContainingMinusValues(sample : sample) == -1
    var checkForMissingData = isMissingData(sample : sample) == -1
    var offloadsLimitApproached = isApproachingLimit(sample: sample)
    return WorstCase(brakeableBefore : brakeableBefore, checkForMinusValues : checkForMinusValues, checkForMissingData : checkForMissingData, offloadsLimitApproached : offloadsLimitApproached)
}

// Returns true if the array is perfectly sorted until the half point
func isBreakableBefore(sample : [Int]) -> Bool{
    let halfCount = sample.count / 2
    for i in 0..<halfCount - 1 {
        if(sample[i] > sample[i]){
            return false
        }
    }
    return true
}

// Check for the existance of negative sample points
func isContainingMinusValues(sample : [Int]) -> Int{
    var containsNegativeSamplePoints = false
    for o in sample.enumerated() {
        if o.element < 0{
            return o.offset
        }
    }
    return -1
}
// Evaluate the array for values with 0 value - indicator of nil data being written in production
func isMissingData(sample : [Int]) -> Int{
    var containsNegativeSamplePoints = false
    for o in sample.enumerated() {
        if o.element == 0{
            return o.offset
        }
    }
    return -1
}

// Are you making use of an array with more than a hundred values
func isApproachingLimit(sample : [Int]) -> Bool {
    return sample.count > 100
}

// Generate test data:
func createRandomSample(limit : Int) -> [Int]{
    var sample = [Int]()
    for i in 0..<limit{
        let v = Int.random(in : 0..<100)
        sample += [v]
    }
    return sample
}

let r = createRandomSample(limit : 50)
print(r)

var worstCasesInData = getWorstCaseFor(sample: r)
