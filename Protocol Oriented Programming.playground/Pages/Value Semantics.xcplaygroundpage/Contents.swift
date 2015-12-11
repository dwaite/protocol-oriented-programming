/*:
# Value semantics
*/

var original:String = "Value semantics are safe"

var excited = original
excited == original
excited.append(Character("!"))
// Updating 'excited' did not affect 'original'
original

original == excited
/*:
[⬅ Previous](@previous) || [Next ➡](@next)
*/
