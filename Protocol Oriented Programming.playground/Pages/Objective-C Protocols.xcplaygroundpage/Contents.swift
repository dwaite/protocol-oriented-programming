/*:
# Objective-C Protocols

When interacting with Objective-C, protocols have different capabilities as well as some restrictions.

First, an Objective-C protocol cannot be implemented by a value type such as a struct or enum, it is implicitly class-only
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
//: [⬅ Previous](@previous) || [Next ➡](@next)
