/*:
# Deferred Protocols vs. Generic Types
* Types can be generic (generalized code), protocols can be 'deferred' (flexible requirements)
* Deferred protocols create a different kind of reusable type
* Protocol will infer argument types needed to match protocol requirements (or fail)
*/

struct EmptyGenerator<T> : GeneratorType {
    func next() -> T? { return nil }
}

// struct GeneratorSequence<T:GeneratorType>:SequenceType { ... }

var emptyResult = Array(GeneratorSequence(EmptyGenerator<Int>()))

emptyResult.count
/*:
[⬅ Previous](@previous) || [Next ➡](@next)
*/
