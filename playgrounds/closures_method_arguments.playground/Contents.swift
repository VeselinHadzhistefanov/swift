var possessionBarers = ["Mark", "Eleonora", "Milen", "Emanuela", "Katty", "Simore", "Sofi"]
var possessionsRegister : [String] = []
var possessions : [(Int, Int)] = []

func putIntoPossession(item : String, owner : String, ownersRegister : inout [String], possessionsRegister : inout [String], possessions : inout [(Int, Int)]) -> [(Int, Int)]{
    // owner and item IDs
    var ownerID = findInRegister(entry: owner, register : ownersRegister)
    var itemID = findInRegister(entry : item , register : possessionsRegister)

    // add records
    if (itemID == -1){
        modifyRegister(operation: "insert", entry: item, register : &possessionsRegister )
        itemID = possessionsRegister.count - 1
    }

    if (ownerID == -1){
        modifyRegister(operation: "insert", entry: owner, register : &ownersRegister )
        ownerID = ownersRegister.count - 1
    }
    
    // append to ownership table
    if (ownerID != -1){
        print(item + " put into possession of " + owner)
        possessions.append((itemID, ownerID))
    }
    return possessions
}
func modifyRegister(operation : String, entry: String, register : inout [String]){
    register.append(entry)
}
func findInRegister(entry : String, register : [String]) -> Int{
    var ID = -1
    for i in 0..<register.count{
        if (entry == register[i]){
            ID = i
            break
        }
    }
    return ID
}
func printOwnership(owner : String, ownersRegister : [String], possessionsRegister : [String], possessions : [(Int, Int)]){
    // print(possessionsRegister) <- bug introduced here - lack of equivalence with outside state that is initiated in closure scope
    let ownerID = findInRegister(entry : owner, register : ownersRegister)

    var ownedItems : [String] = []
    for possessionEntry in possessions{
        let name = ownersRegister[possessionEntry.1]
        if(name == owner){
            let item = possessionsRegister[possessionEntry.0]
            ownedItems.append(item)
        }
    }
    print(ownedItems)
}
putIntoPossession(item: "Large Anal Plug", owner: "Sofi", ownersRegister: &possessionBarers, possessionsRegister : &possessionsRegister, possessions : &possessions)
putIntoPossession(item: "Long Deep Dildo", owner: "Sofi", ownersRegister: &possessionBarers, possessionsRegister : &possessionsRegister, possessions : &possessions)
putIntoPossession(item: "Dialator Plug with wide base", owner: "Sofi", ownersRegister: &possessionBarers, possessionsRegister : &possessionsRegister, possessions : &possessions)
putIntoPossession(item: "Squigly Iritator Anal Plug", owner: "Sofi", ownersRegister: &possessionBarers, possessionsRegister : &possessionsRegister, possessions : &possessions)

printOwnership(owner: "Sofi", ownersRegister: possessionBarers, possessionsRegister: possessionsRegister, possessions: possessions)

printOwnership(owner: "Sofi", ownersRegister: possessionBarers, possessionsRegister: possessionsRegister, possessions: {return putIntoPossession(item: "Fine Plastic Brush", owner: "Sofi", ownersRegister: &possessionBarers, possessionsRegister : &possessionsRegister, possessions : &possessions)}())

// Observations:
// Method parameters seems to be used in the state that they are inserted into the method through the into keyword, this causes the capture statement to modify the state of the referenced variable outside the scope of the function and thus there is an inconsistent version of the refefrenced variable insode the method that doesn't match the versions of the variables directly passed to the function.
// Proof or rejections : if printing the values exposes differeing values the function is presenting bugs inside of mangled references in inside and outside scopes.
// print(possessionsRegister) as first statement of print function confirms varying inside and outside scope within the state created by the closure modifying values used inside.
// bug might be avoidable if care is taken to assert structure states before initiation for ensuring equivalence in state.
