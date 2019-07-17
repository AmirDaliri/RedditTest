//
//  ListData.swift
//  RedditTest
//
//  Created by Amir Daliri on 17.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import Foundation
import ObjectMapper

class ListData: Mappable, NSCoding {
    
    // MARK: Declaration for string constants to be used to decode and also serialize.
    private struct SerializationKeys {
        static let dist = "dist"
        static let children = "children"
        static let modhash = "modhash"
    }
    
    // MARK: Properties
    var dist: Int?
    var children: [Children]?
    var modhash: String?
    
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
        dist <- map[SerializationKeys.dist]
        children <- map[SerializationKeys.children]
        modhash <- map[SerializationKeys.modhash]
    }
    
    /// Generates description of the object in the form of a NSDictionary.
    ///
    /// - returns: A Key value pair containing all valid values in the object.
    public func dictionaryRepresentation() -> [String: Any] {
        var dictionary: [String: Any] = [:]
        if let value = dist { dictionary[SerializationKeys.dist] = value }
        if let value = children { dictionary[SerializationKeys.children] = value.map { $0.dictionaryRepresentation() } }
        if let value = modhash { dictionary[SerializationKeys.modhash] = value }
        return dictionary
    }
    
    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
        self.dist = aDecoder.decodeObject(forKey: SerializationKeys.dist) as? Int
        self.children = aDecoder.decodeObject(forKey: SerializationKeys.children) as? [Children]
        self.modhash = aDecoder.decodeObject(forKey: SerializationKeys.modhash) as? String
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(dist, forKey: SerializationKeys.dist)
        aCoder.encode(children, forKey: SerializationKeys.children)
        aCoder.encode(modhash, forKey: SerializationKeys.modhash)
    }
    
}

