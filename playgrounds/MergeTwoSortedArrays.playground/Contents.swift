// Goal: Given a list of
// Example data given in two arrays
var array1 : [Int] = [2, 3, 7, 9, 24]
var array2 : [Int] = [0, 1, 3, 6, 12, 17, 36]

// Interlace function
func interlaceValues(array1 : [Int], array2 : [Int]) -> [Int] {
    var result : [Int] = []
    var matrix : [[Int]] = [array1, array2]
    result = lace(array : matrix)
    return result
}

func lace(array : [[Int]]) -> [Int] {
    var a = array
    var count = 0
    var result : [Int] = []
    for i in 0..<a.count{
        count += a[i].count
    }
    var idxs : [Int] = []
    for i in 0..<a.count{
        idxs.append(0)
    }
    for i in 0..<count{
        var min = Int.max
        var idx = 0
        for j in 0..<a.count{
            if a[j].count != 0 {
                var v = a[j][idxs[j]]
                if v < min {
                    min = v
                    idx = j
                }
            }
        }
        result.append(min)
        print(a[idx])
        a[idx].remove(at: 0)
        print(a[idx])
    }
    
    return result
}

print(interlaceValues(array1 : array1, array2 : array2))
