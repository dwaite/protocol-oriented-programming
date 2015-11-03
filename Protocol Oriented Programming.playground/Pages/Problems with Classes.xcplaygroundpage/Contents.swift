/*:
# Problems with Classes
Various languages interpret Object Oriented paradigms differently, but:

* Without interfaces/prototypes, you are often limited to single inheritance
* Inheritance combines the prototype and implementation details into the base class
  * Inherit its variables and its implementation
  * Required to initialize said variables via initializer chaining
  * Precise usage of the class needs to be described both for 
    * third party callers of the class and subclasses
    * subclass implementors on what is safe to override and how to do so
  * Without abstract methods, must define dead/failing versions on base class
  * Inherited methods cannot be more specific (covariant) with agument types, e.g.
  > func isEqual(other:SubclassType) -> Bool
* Classes often have reference semantics and are often mutable. 
  * Data can change out from under you
  * Data read/write access be protected when used among multiple threads

[⬅ Previous](@previous) || [Next ➡](@next)
*/
