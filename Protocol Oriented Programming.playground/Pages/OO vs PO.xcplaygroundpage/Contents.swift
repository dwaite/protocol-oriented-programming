/*:
# Object vs Protocol-Oriented

### When to use a class:
* Implementing Equatable / Hashable doesn't make sense
* Working with pre-existing code/framework expecting classes
*/
import UIKit

struct Polygon { /* ... */ }
class  DiagramView : UIView { }

/*:
* Type represents some resource which doesn't make sense to copy
    * File handle, Network socket, Database connection
*/

struct URL { /* ... */ }
class FileInputStream { /* ... */ }

/*:
[⬅ Previous](@previous) || [Next ➡](@next)
*/