/*:
# Objective-C Protocols

Objective-C protocols can have optional functions, not available to pure Swift protocols
*/
import Foundation
import UIKit

@objc protocol UITableViewDelegate {
    /* ... */
    @available(iOS 2.0, *)
    optional func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
}

/*: 
However, I personally do not recommend this in designing your own swift protocols, as it can lead to non-intuitive issues. From this particular message's documentation:

    There are performance implications to using tableView:heightForRowAtIndexPath:
    instead of the rowHeight property. Every time a table view is displayed, it 
    calls tableView:heightForRowAtIndexPath: on the delegate for each of its rows, 
    which can result in a significant performance problem with table views having a
    large number of rows.



[⬅ Previous](@previous) || [Next ➡](@next)
*/
