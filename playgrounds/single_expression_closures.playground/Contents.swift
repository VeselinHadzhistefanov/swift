// This playground demonstrates the functionality provided by placing a single expression as the executed code in a single-expression closure. Single-expression closures allow for changing of variables on the fly with the return values automaticaly infered by the context.

struct PersonalObject{
    let owner: String = "Yolanda"
    let price: Int = 0
    let color: String = "Transparent"
    init(owner : String, price : Int, color : String){
        self.owner = owner
        self.price = price
        self.color = color
    }
}
let Simore : String = "Simore"
let SimoreLoveToy = PersonalObject(owner: Simore, price: 15, color: "Pink")
func show_members_of_object()
