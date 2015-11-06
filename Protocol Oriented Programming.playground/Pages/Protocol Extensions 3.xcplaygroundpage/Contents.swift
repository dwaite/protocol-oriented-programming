/*:
# Protocol Extensions

Note, however, you cannot conditionally extend a type with support for another protocol
*/

// Error: extension of type 'Array' with constraints cannot have an inheritance clause
//extension Array:Equatable where Element:Equatable {
//    
//}

// For this reason, arrays of Equatable types can be compared, but Array itself is not Equatable

[1] == [1]

//
[] == []
[[]] == [[]]
/*:
[⬅ Previous](@previous) || [Next ➡](@next)
*/
