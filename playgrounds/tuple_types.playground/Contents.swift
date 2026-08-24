import Foundation
typealias Strength = (ramp: Float, max: Int)
typealias CapabilitySnapshot = (capability: Strength, date: Date)
//typealias Capability = (type: , value_1, value_2)

var capacity : Strength
capacity = (0.05, 95)
print(capacity)
print(Strength.self)
print(capacity.ramp)

var recorded_capability = CapabilitySnapshot(capacity, Date.now)
print(recorded_capability)


func announce_capability(capability : CapabilitySnapshot){
    //print(CapabilitySnapshot)
}

//func create_capability_snapshot(capability: Strength)

print(type(of: type(of: "asdad")))
