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
