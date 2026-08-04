// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct swift_package_2 {
    static func printLayersPattern(){
        let len = 4;
        var n = 1
        for i in 0...len-1{
        let u = (len - i - 1) * 2
        if(u > 0){
            for _ in 0...u{
                print(" ", terminator:"")
            }
        }
        
        for _ in 0...i{
            print(String(n) + " ", terminator:"");
            n += 1
        }
        print("")
        }
    }
    static func main() {
        print("Hello, world!")
        printLayersPattern()
    }
}
