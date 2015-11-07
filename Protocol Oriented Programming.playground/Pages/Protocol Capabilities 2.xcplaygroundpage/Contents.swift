/*:
# Protocol Capabilities
A protocol also can define requirements on types themselves:
*/

protocol Encodable {
    func encode(coder: Coder)
    
    // Required initializers
    init?(decoder: Coder)
    
    // Static functions and variables
    static var version:String {get}
    static func compatibleWithEncodedVersion(version:String) -> Bool
}

//: Or even require implementations to have reference semantics
protocol AnyObject : class {}

//: [⬅ Previous](@previous) || [Next ➡](@next)
