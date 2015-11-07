/*:
# Decision-making on classes vs structs

### When to use a class:
* Implementing Equatable / Hashable doesn't make sense
* Working with pre-existing code/framework expecting classes
*/
import UIKit

struct Polygon { /* ... */ }

/* Class inheritance is necessary for working with some pre-existing code, but may no longer be preferable */
class  DiagramView : UIView { }

/*
Cocoa and Cocoa touch discourage class inheritance in some unneccesary situations, using delegates implementing defined protocols to override behavior and supply data
*/

/*:
* Type represents some resource which doesn't make sense to copy
    * File handle, Network socket, Database connection
*/

struct URL { /* ... */ }
class FileInputStream { /* ... */ }

/*:
[⬅ Previous](@previous) || [Next ➡](@next)

*/
