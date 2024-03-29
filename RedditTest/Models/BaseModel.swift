//
//  BaseModel.swift
//  RedditTest
//
//  Created by Amir Daliri on 17.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import Foundation
import ObjectMapper

class BaseModel: Mappable, NSCoding {
    
    // MARK: Declaration for string constants to be used to decode and also serialize.
    private struct SerializationKeys {
        static let data = "data"
        static let kind = "kind"
    }
    
    // MARK: Properties
    public var data: ListData?
    public var kind: String?
    
    // MARK: ObjectMapper Initializers
    /// Map a JSON object to this class using ObjectMapper.
    ///
    /// - parameter map: A mapping from ObjectMapper.
    public required init?(map: Map){
        
    }
    
    /// Map a JSON object to this class using ObjectMapper.
    ///
    /// - parameter map: A mapping from ObjectMapper.
    public func mapping(map: Map) {
        data <- map[SerializationKeys.data]
        kind <- map[SerializationKeys.kind]
    }
    
    /// Generates description of the object in the form of a NSDictionary.
    ///
    /// - returns: A Key value pair containing all valid values in the object.
    public func dictionaryRepresentation() -> [String: Any] {
        var dictionary: [String: Any] = [:]
        if let value = data { dictionary[SerializationKeys.data] = value.dictionaryRepresentation() }
        if let value = kind { dictionary[SerializationKeys.kind] = value }
        return dictionary
    }
    
    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
        self.data = aDecoder.decodeObject(forKey: SerializationKeys.data) as? ListData
        self.kind = aDecoder.decodeObject(forKey: SerializationKeys.kind) as? String
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(data, forKey: SerializationKeys.data)
        aCoder.encode(kind, forKey: SerializationKeys.kind)
    }
    
}
