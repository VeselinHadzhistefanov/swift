// Defining statements for local scope:
func locally (content : () -> ()) {
    content()
    //print(content.self)
}
// Simple enumeration definition:
enum UniqueValuesEnum{
    case EnumValue1
    case EnumValue2
    case EnumValue3
    case EnumValue4
}
// The simple enum defines the values of a straight-forward enumeration that has 4 possible values
// Name of enum: UniqueValuesEnum
// Values: 4 enumeration values / named states of the Enum type
// In simple terms this enum definition can be described as a new Type that specifies that is defined to have 4 possible states. Logically any variable that is defined to contain a values of the type of this Enum will have to contain one of those states in it.
// Example with the enum given:
var myDescription : UniqueValuesEnum = .EnumValue1
// In simple terms this expression defines a variable myDescription that is going to contain some UniqueValuesEnum value and that values happens to be EnumValue1 in this case
// In other terms it can be said that: myDescription is a UniqueValuesEnum (Unique Value / Unique Property) with the property: EnumValue1 (UniqueProperty1)
// Redefining the expression gives us this:
locally{
    enum UniqueProperty {
        case UniqueProperty1
        case UniqueProperty2
        case UniqueProperty3
        case UniqueProperty4
    }
}
// OR
locally{
    enum UniqueProperty {
        case Property1
        case Property2
        case Property3
        case Property4
    }
}



