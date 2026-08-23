import Foundation

let range = Range(0...5)
let range_double = 0.0...5.0
let comparable_range = ClosedRange<Comparable>(range_double)

let assigned_range = Range.Indices(other : ClosedRange<Comparable>(range_double))
for i in range {
    print("number: \(i)")
}
