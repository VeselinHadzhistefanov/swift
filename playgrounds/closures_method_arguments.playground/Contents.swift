var possessionBarers = ["Mark", "Eleonora", "Milen", "Emanuela", "Katty", "Simore"]
var possessionsRegister : [String] = []
var possessions : [Int] = []

func putIntoPossession(item : String, name : String, nameRegister : [String], possessionsRegister : [String], posessions : [Int]){
    // find owner ID
    var ownerID = -1
    for i in 0..<nameRegister.count{
        if (name == nameRegister[i]){
            ownerID = i
            break
        }
    }
    // find item ID
    var itemID = -1
    for i in 0..<possessionsRegister.count{
        if(item == possessionsRegister[i]){
            itemID = i
            break
        }
    }
    if (itemID == -1){
        possessionsRegister.append(item)
    }
    if (ownerID != -1){
        print(item + " put into possession of " + name)
        possessions.
    }
    
}
func printOwnership(title : String){
    
}
