/*:
# Protocol Capabilities

Finally, protocols can extend other protocols:

*/
protocol Encodable { /* ... */ }

protocol MultiVersionEncodable : Encodable {
    func encodeToVersion(coder: Coder, version:String) throws
    init?(decoder: Coder, version:String) throws
}

//: [⬅ Previous](@previous) || [Next ➡](@next)
