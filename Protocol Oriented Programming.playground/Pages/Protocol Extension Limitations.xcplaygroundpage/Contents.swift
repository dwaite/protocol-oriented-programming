/*:
# Protocol Extension Limitations

Note, however, you cannot conditionally extend a type with support for another protocol.
*/

// Error: extension of type 'Array' with constraints cannot have an inheritance clause
extension Array:Equatable where Element:Equatable {

}

/*:
> *Note*: in some contexts, acceptEquatable([]) will work above! This is because once you import Foundation, the compiler knows that an Array can be represented by NSArray - NSObject supports Equatable via isEqual:

[⬅ Previous](@previous) || [Next ➡](@next)
*/
