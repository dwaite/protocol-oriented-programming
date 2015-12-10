/*:
# Dealing with Deferred Protocols

2. Define/extend a non-Deferred protocol (or wrapper type) to work with
*/
protocol Shape {
    func combineWith(other:Self)
}

// Error: Protocol 'Shape' can only be used as a generic constraint...
// var diagram:[Shape]

// But we can define a new protocol
protocol Shapelike {}

struct Circle: Shape {
    func combineWith(other:Circle) { /* ... */ }
}

struct Square: Shape {
    func combineWith(other:Square) { /* ... */ }
}

// And add support for the types we want
extension Circle: Shapelike {}
extension Square: Shapelike {}

var diagram2:[Shapelike]

/*:
[⬅ Previous](@previous) || [Next ➡](@next)
*/
