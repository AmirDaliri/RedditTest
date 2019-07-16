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
        static let kind = "kind"
        static let data = "data"
    }
    
    // MARK: Properties
    public var kind: String?
    public var data: String?
    
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
        kind <- map[SerializationKeys.kind]
        data <- map[SerializationKeys.data]
    }
    
    /// Generates description of the object in the form of a NSDictionary.
    ///
    /// - returns: A Key value pair containing all valid values in the object.
    public func dictionaryRepresentation() -> [String: Any] {
        var dictionary: [String: Any] = [:]
        if let value = kind { dictionary[SerializationKeys.kind] = value }
        if let value = data { dictionary[SerializationKeys.data] = value }
        return dictionary
    }
    
    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
        self.kind = aDecoder.decodeObject(forKey: SerializationKeys.kind) as? String
        self.data = aDecoder.decodeObject(forKey: SerializationKeys.data) as? String
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(kind, forKey: SerializationKeys.kind)
        aCoder.encode(data, forKey: SerializationKeys.data)
    }
    
}

