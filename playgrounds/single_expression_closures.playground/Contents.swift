// This playground demonstrates the functionality provided by placing a single expression as the executed code in a single-expression closure. Single-expression closures allow for changing of variables on the fly with the return values automaticaly infered by the context.

struct PersonalObject{
    var owner: String = "Yolanda"
    var itemName : String = ""
    var price: Int = 0
    var color: String = "Transparent"
    init(owner : String, itemName : String, price : Int, color : String){
        self.owner = owner
        self.itemName = itemName
        self.price = price
        self.color = color
    }
}
let Simore : String = "Simore"
var SimoreLoveToy = PersonalObject(owner: Simore, itemName: "Deep Love Toy", price: 35, color: "Pink")

func reveal_Object(o : PersonalObject){
    print("This is " + o.owner + "'s " + o.itemName + " for " + String(o.price) + " in " + o.color)
}

reveal_Object(o : SimoreLoveToy)
reveal_Object(o : {SimoreLoveToy.itemName = "Big Pointy Anal Dialation Plug"; return SimoreLoveToy}())
