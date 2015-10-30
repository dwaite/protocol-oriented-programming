/*: 
# Protocol Capabilities
A protocol defines requirements on instances of types:
*/

protocol StringList {
    // properties
    var count:Int {get}

    // methods
    func concatenate(separator: String) -> String

    // including mutable methods
    mutating func append(newString: String)
    
    // and subscripts
    subscript(index: Int)->String { get set}
}

//: [⬅ Previous](@previous) || [Next ➡](@next)
