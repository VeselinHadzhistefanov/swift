// swift-tools-version: 6.3' 
@main
struct swift_package_1 {
    struct DataUnit {
        var _int: Int = 0
        var _string: String = ""
        func _print(){
            print("DataUnit contents:")
            print("  _int = " + String(_int))
            print("  _string = " + _string)
        }
    }
    public class DataPort {
        var _int: Int = 0
        var _string: String = ""
        init(_int : Int, _string : String){
            self._int = _int
            self._string = _string
        }
        func _print(){
            print("DataSource contents:")
            print("  _int = " + String(_int))
            print("  _string = " + _string)
        }    
    }
    public static func printStacking (s: String){
        print(String(s), terminator:"")
    }

    static func main() {
        //print("Hello, world!")
        let a: Int = 1
        let b: String = "This is a string variable"
        let u: swift_package_1.DataUnit = DataUnit(_int:a, _string:b)
        var _uc = u
        _uc._string = "unfavorable"
        printStacking(s:"\nu: ")
        printStacking(s:u._string)
        printStacking(s:"\n_uc: ")
        printStacking(s:_uc._string)
        let s: swift_package_1.DataPort = DataPort(_int:a, _string:b)
        var _sc = s
        _sc._string = "favorable"
        printStacking(s:"\ns: ")
        printStacking(s:s._string)
        printStacking(s:"\n_sc ")
        printStacking(s:_sc._string)
    }
}
