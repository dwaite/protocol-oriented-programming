/*:
# Protocol Extension Limitations

Also, you cannot extend one protocol with support for another

*/
import UIKit

protocol Colorable {
    func colorize(color:UIColor)
}

// Error: Extension of protocol 'Equatable' cannot have an inheritance clause

protocol Sepiable {
    func sepiaTone()
}

/* I can add sepiaTone as a function on all Colorable */
extension Colorable {
    func sepiaTone() {
        colorize(UIColor.brownColor())
    }
}
/* But I can't say all Colorable are Sepiable */
extension Colorable: Sepiable {} // Error: Extension of protocol cannot have an inheritance clause

/*:

[⬅ Previous](@previous) || [Next ➡](@next)
*/
