func defined_sort(array arr : [String], sort_method_closure sort : ([String]) -> [String]) -> [String]{
    var arr_sorted = [String]()
    arr_sorted = sort(arr)
    return arr_sorted
}

let jobs = ["cash register", "waiter", "truck driver", "fitness instructor", "medical staff"]


let sort_result = defined_sort(array: jobs, sort_method_closure: {arr in for v in arr.enumerated(){print(v)}; return arr})
