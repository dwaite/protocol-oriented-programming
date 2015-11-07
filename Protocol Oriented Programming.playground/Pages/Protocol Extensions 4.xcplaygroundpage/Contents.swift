/*:
# Protocol Extensions

Note, however, you cannot conditionally extend a type with support for another protocol
*/


struct Foo : Equatable {
    var value:Int
}
func == (lhs:Foo,rhs:Foo) -> Bool {
    return lhs.value == rhs.value
}

func acceptEquatable<T:Equatable>(value:T) {
    print(Mirror(reflecting: value))
}

// Both Int and Foo are Equatable
acceptEquatable(1)
acceptEquatable(Foo(value: 1))

// An array of Int is not Equatable
acceptEquatable([]) // Error

// We would love to make this work, but unfortunately:
// Error: extension of type 'Array' with constraints cannot have an inheritance clause
extension Array:Equatable where Element:Equatable {

}

/*:
> *Note*: in some contexts, acceptEquatable([]) will work above! This is because once you import Foundation, the compiler knows that an Array can be represented by NSArray - NSObject supports Equatable via isEqual:

[⬅ Previous](@previous) || [Next ➡](@next)
*/
