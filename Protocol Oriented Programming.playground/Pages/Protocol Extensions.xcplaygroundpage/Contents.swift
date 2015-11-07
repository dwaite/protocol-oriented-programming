/*:
# Protocol Extensions

Extensions in Swift 2.0 became much more powerful.

You may now extend a protocol to extend all implementing types of that protocol.
*/

extension GeneratorType {
    mutating func consumeRemaining() -> Int {
        var count = 0
        while(next() != nil) {
            count++
        }
        return count
    }
}

// arrays are a SequenceType, which exposes a generator
var generator = [1,2,3,4].generate()
generator.consumeRemaining()
generator.next() == nil

/*: You may also extend a protocol with new methods conditionally - the new method is available only where it makes sense */

extension SequenceType where Generator.Element:IntegerType {
    var sum:Generator.Element {
        return self.reduce(0 as Generator.Element) { $0 + $1 }
    }
}

[1, 2, 3, 4].sum

/*:
[⬅ Previous](@previous) || [Next ➡](@next)
*/
