public struct Coder {}

public struct URL {
    
    public let value:String
    
    public init(stringValue: String) throws {
        /* perform URL validation rules, throw if invalid */
        value = stringValue
    }
    
    public var scheme:String? {
        /* look at string up to first colon for absolute URL, return nil if a relative URL */
        return nil
    }
    
    /* ... */
}
