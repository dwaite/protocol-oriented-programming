/*:
# Deferred Protocols

A protocol can have the actual types of properties and method arguments/results be determined by the implementor
*/
public struct Point3D : Equatable {
    var x,y,z:Float
}

public func == (lhs:Point3D, rhs:Point3D) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z
}

// Cannot accept Equatable as a type
func requireEquatable<T:Equatable>(e:T) -> String {
    return "Accepted: \(e)"
}

requireEquatable(Point3D(x: 1, y: 1, z: 1))

[Point3D(x: 1, y: 1, z: 1)] == [Point3D(x: 1, y: 1, z: 1)]

// Signature from standard library (commented out since it conflicts)
// Returns true if these arrays contain the same elements.

// public func ==<Element : Equatable>(lhs: [Element], rhs: [Element]) -> Bool

//: [⬅ Previous](@previous) || [Next ➡](@next)
