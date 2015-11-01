/*:
# Objective-C Protocols

An Objective-C protocol cannot be implemented by a value type, it is implicitly class-only
*/
import Foundation
import UIKit

@objc protocol Toggleable {
    func toggle()
}

// Error: Non-class type 'Switch' cannot conform to class protocol 'Toggleable'
struct Switch : Toggleable {
    func toggle() -> Bool { return true }
}
//: Objective-C protocols can have optional functions, not available to pure Swift protocols
@objc protocol _UITableViewDelegate {
    /* ... */
    @available(iOS 2.0, *)
    optional func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
}
//: [⬅ Previous](@previous) || [Next ➡](@next)
