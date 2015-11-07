/*:
# Protocol Extension Limitations

Also, you cannot extend a deferred protocol with support for a non-deferred protocol
*/

protocol EqualTo {
    func isEqualTo(other:Any) -> Bool
}

// Error: Extension of protocol 'Equatable' cannot have an inheritance clause
extension Equatable : EqualTo {
    func isEqualTo(other:Any) -> Bool {
        /* ... logic */
        return false
    }
}

/*:
This is likely because deferred protocols aren't types and don't exist at runtime, only at compile time.

[⬅ Previous](@previous) || [Next ➡](@next)
*/
