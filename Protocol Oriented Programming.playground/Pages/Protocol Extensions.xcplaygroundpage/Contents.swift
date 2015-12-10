/*:
# Protocol Extensions

Extensions in Swift 2.0 became much more powerful.

You may now extend a protocol to extend all implementing types of that protocol.
*/

// Collections (like Arrays, Dictionaries, Sets) all implement CollectionType
extension CollectionType {
    var small:Bool {
        return self.count < 5
    }
}

var scale = Array(1...10)
scale.small
/*: You may also extend a protocol with new methods conditionally - the new method is available only where it makes sense */
extension CollectionType where Generator.Element:IntegerType {
    var sum:Generator.Element {
        return self.reduce(0) { $0 + $1 }
    }
}

[1, 2, 3, 4, 5].sum

/*:
[⬅ Previous](@previous) || [Next ➡](@next)
*/
