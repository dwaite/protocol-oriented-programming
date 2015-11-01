/*:
# Protocols vs. Generics

* Implementations of types can only support one specific variant of a protocol
* Can work around this by having 'view' objects
*/
protocol _String {
    var utf8: String.UTF8View   { get }
    var utf16: String.UTF16View { get }
    var unicodeScalars: String.UnicodeScalarView { get }
    var characters: String.CharacterView { get }
}
var flag = "🇺🇸"

flag.characters.count
flag.unicodeScalars.count
flag.utf16.count
flag.utf8.count

var bytes = flag.utf8.map() { UInt8($0) }
bytes.map(){ String(format: "0x%x", $0) }
    .joinWithSeparator(", ")/*:
[⬅ Previous](@previous) || [Next ➡](@next)
*/
