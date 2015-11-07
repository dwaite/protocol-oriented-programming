/*:
# Dealing with Deferred Protocols

2. Define/extend a non-Deferred protocol (or wrapper type) to work with
*/
protocol Shape {
    func combineWith(other:Self)
}

struct Circle: Shape {
    var radius:Float
    func combineWith(other:Circle) {
        /* ... do some logic */
    }
}

struct Square: Shape {
    var side:Float
    func combineWith(other:Square) {
        /* ... do some logic */
    }
}

// Error: Protocol 'Shape' can only be used as a generic constraint...
var diagram:[Shape]

// But we can define a new protocol
protocol Shapelike {}

// And add support for the types we want
extension Circle: Shapelike {}
extension Square: Shapelike {}

var diagram2:[Shapelike]

/*:
[⬅ Previous](@previous) || [Next ➡](@next)
*/
