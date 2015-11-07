/*:
# Dealing with Deferred Protocols
When a protocol is deferred, it can only be used as a generic constraint, not a type.

You have two ways to use deferred protocols:

1. Use generic constraints
*/
func max<T:Comparable>(elements:T...) -> T {
    guard (!elements.isEmpty) else {
        fatalError("No elements provided")
    }
    var currentMax = elements[0]
    for element in elements {
        if currentMax < element {
            currentMax = element
        }
    }
    return currentMax
}
/*:
[⬅ Previous](@previous) || [Next ➡](@next)
*/
