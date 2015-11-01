/*:
# Typed Protocols

A protocol can have the actual type of properties and method arguments/results be determined by the implementor

*/

// 'Self' is the actual type implementing the protocol
//public protocol _Equatable {
//    @warn_unused_result
//    func ==(lhs: Self, rhs: Self) -> Bool
//}

public struct Point3D<T> {
    var x,y,z:T
}

func == <T:Equatable> (lhs:Point3D<T>, rhs:Point3D<T>) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z
}

extension Point3D:Equatable where T:Equatable {}

func requireEquatable<T:Equatable>(e:T) {
    
}
struct Foo{}

var a:Point3D<Foo>
var b:Point3D<Int>

requireEquatable([1])
requireEquatable(b)
requireEquatable(a)

var str = "Hello, playground"

//: [⬅ Previous](@previous) || [Next ➡](@next)
