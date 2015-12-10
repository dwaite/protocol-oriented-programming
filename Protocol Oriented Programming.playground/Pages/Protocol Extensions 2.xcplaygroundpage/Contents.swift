/*:
# Protocol Extensions

Extensions can be used to declare a default implementation of part of a protocol as well, as an alternative to 'optional' methods on protocols
*/

protocol Vehicle {
    var rolls:Bool {get}
    var enclosed:Bool {get}
}

extension Vehicle {
    var rolls:Bool  { return true}
    var enclosed:Bool {return true}
    var name:String   { return String(self.dynamicType) }
}

struct Bike: Vehicle {
    // we inherit the implementation of 'rolls'
    var enclosed: Bool { return false}
    var name: String { return "Bicycle" }
}

// Bike has all its custom behavior
var b = Bike()
( b.rolls, b.enclosed , b.name )

// But when you only know something as a protocol instance, only methods declared by the protocol are dynamic:
var v:Vehicle = Bike()
( v.rolls, v.enclosed , v.name )

/*:
[⬅ Previous](@previous) || [Next ➡](@next)
*/
