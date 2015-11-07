/*:
# Problems with Classes and Class Inheritance
Various languages interpret Object Oriented paradigms differently, but:

* Classes often have reference semantics and are often mutable.
    * Data can change out from under you when sharing an instance
    * Data read/write access must be protected when used among multiple threads
        * Implementing a locking policy
* Without interfaces/prototypes, you are often limited to single inheritance
* Inheritance combines the prototype and implementation details into the base class
  * Inherit the base class variables and implementation
  * Required to initialize said variables via initializer chaining
  * Precise usage of the class needs to be described both for 
    * third party callers of the class and subclasses
    * subclass implementors on what is safe to override and how to do so
  * Without abstract methods, must define dead/failing versions on base class
  * Inherited methods cannot be more specific (covariant) with agument types, e.g.
  > func isEqual(other:SubclassType) -> Bool
    * a.k.a. inheritance tree base vs leaf nodes 

[⬅ Previous](@previous) || [Next ➡](@next)
*/
