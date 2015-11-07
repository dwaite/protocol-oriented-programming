/*:
# Protocol-Oriented Programming

Swift encourages the use of value types (struts and enums), protocols, and extensions over classes and inheritance.

Since swift supports both, this new style is referred to as Protocol-Oriented Programming

Still has the same ideals as OOP:
* Enapsulation
* Access Control
* Abstraction
* Namespacing
* Expressiveness
* Polymorphism

But with differences, as expected:
* Structs and enums have value semantics - sharing will create a copy of the current state
* A type can be used in the implementation of a new struct by aggregation, without any additional cost
> `Swift.Int` is a struct containing a `Builtin.Int64`
* Protocols used to make types usable interchangably
* extensions to types are used heavily to add new methods as well as to declaring support for new protocols, without requiring the original type to be altered
* extensions to protocols themselves, adding functionality and protocol conformance to every implementation

[⬅ Previous](@previous) || [Next ➡](@next)
*/

