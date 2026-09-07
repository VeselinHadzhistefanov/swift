// Goal: Create a method that demonstrates the function of array slices and privides an interface for managing such interactions

let array = [1, 5, 8, 2, 5, 3, 6]
print(array[0...3])
print(array[0...3][3])
do {
    try {throw print(array[0...3][4])} throws -> Error(e) // Index out of bounds
    catch {
        {
            print(e)
        }
    }

}
print(array[0...9])


