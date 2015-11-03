/*:
# Protocol-Oriented Programming

Swift encourages the use of value types (struts and enums), protocols, and extensions over classes and inheritance.

Since swift supports both, this new style is referred to as Protocol-Oriented Programming

Still work the same:
* Enapsulation
* Access Control
* Abstraction
* Namespacing
* Expressiveness

Now working different:
* Structs and enums have value semantics - sharing will create a copy of the current state
* A type can be used in the implementation of a new struct by aggregation, without any additional cost
> `Int` is a struct containing a `Builtin.Int64`
* A type can have extensions which add new methods (and declaring support for new protocols), including extending protocols themselves
[⬅ Previous](@previous) || [Next ➡](@next)
*/

