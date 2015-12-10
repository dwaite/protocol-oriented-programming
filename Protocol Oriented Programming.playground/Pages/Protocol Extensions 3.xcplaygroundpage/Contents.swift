/*:
# Protocol Extensions

Because you can add protocol conformance to existing types via extensions, cases in other languages which involve wrappers/adapters are simply not needed in Swift.

Based on Crustacean.playground:
*/

import Foundation
import UIKit

protocol Renderer {
    func moveTo(position:CGPoint) -> Renderer
    func lineTo(position:CGPoint) -> Renderer
}

extension CGContext : Renderer {
    func moveTo(position:CGPoint) -> Renderer {
        CGContextMoveToPoint(self, position.x, position.y)
        return self
    }
    
    func lineTo(position:CGPoint) -> Renderer {
        CGContextAddLineToPoint(self, position.x, position.y)
        return self
    }
}

/*:
[⬅ Previous](@previous) || [Next ➡](@next)
*/
