/*:
# Extensions
*/

extension URL: StringLiteralConvertible {
    public init(stringLiteral: String) {
        /* perform URL validation rules, fail if invalid */
        do {
            try self.init(stringValue: stringLiteral)
        }
        catch {
            fatalError("Invalid URL via string literal \"\(stringLiteral)\": \(error)")
        }
    }
    
    public init(unicodeScalarLiteral value: String) {
        self.init(stringLiteral: value)
    }
    
    public init(extendedGraphemeClusterLiteral value: String) {
        self.init(stringLiteral: value)
    }
}

extension URL {
    public var description:String {
        return value
    }

    public var debugDescription:String {
        return value
    }
}

let google:URL = "https://www.google.com"

/*:
[⬅ Previous](@previous) || [Next ➡](@next)
*/
