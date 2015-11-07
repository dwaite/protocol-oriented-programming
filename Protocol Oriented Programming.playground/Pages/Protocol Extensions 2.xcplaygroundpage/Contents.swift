/*:
# Protocol Extensions

Extensions can be used to declare a default implementation of part of a protocol as well, as an alternative to 'optional' methods on protocols
*/

protocol IsEqual {
    func equalTo(rhs:Any) -> Bool
}

extension IsEqual where Self:Equatable {
    func equalTo(rhs:Any) -> Bool {
        switch rhs {
        case let rhs as Self:
            return self == rhs
        default:
            return false
        }
    }
}

struct Square:IsEqual {
    var side:Float
    
    func equalTo(rhs:Any) -> Bool {
        guard let other = rhs as? Square else {
            return false
        }
        return other.side == side
    }
}

struct Circle:IsEqual, Equatable {
    var radius:Float
}

func == (lhs:Circle, rhs:Circle) -> Bool {
    return lhs.radius == rhs.radius
}


Circle(radius: 4).equalTo(Circle(radius: 4))
Square(side: 4).equalTo(Square(side: 4))
Circle(radius: 4).equalTo(Square(side: 4))

/*:
[⬅ Previous](@previous) || [Next ➡](@next)
*/
