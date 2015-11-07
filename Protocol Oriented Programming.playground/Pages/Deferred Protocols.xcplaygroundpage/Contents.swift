/*:
# Deferred Protocols

A protocol can have the actual types of properties and method arguments/results be determined by the implementor.
> **Note**: Deferred protocol is my own term for this concept, as Swift does not break this out into a separate 'thing'
*/
// From standard library:
protocol Equatable {
    func ==(lhs:Self, rhs:Self) -> Bool
}

// From standard library:
public protocol GeneratorType {
    /// The type of element generated
    typealias Element

    mutating func next() -> Self.Element?
}

//: [⬅ Previous](@previous) || [Next ➡](@next)
