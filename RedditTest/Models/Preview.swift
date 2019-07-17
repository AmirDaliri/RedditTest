//
//  Preview.swift
//  RedditTest
//
//  Created by Amir Daliri on 17.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import Foundation
import ObjectMapper

class Preview: Mappable, NSCoding {
    
    // MARK: Declaration for string constants to be used to decode and also serialize.
    private struct SerializationKeys {
        static let enabled = "enabled"
        static let images = "images"
    }
    
    // MARK: Properties
    var enabled: Bool? = false
    var images: [ImagesModel]?
    
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
        enabled <- map[SerializationKeys.enabled]
        images <- map[SerializationKeys.images]
    }
    
    /// Generates description of the object in the form of a NSDictionary.
    ///
    /// - returns: A Key value pair containing all valid values in the object.
    public func dictionaryRepresentation() -> [String: Any] {
        var dictionary: [String: Any] = [:]
        dictionary[SerializationKeys.enabled] = enabled
        if let value = images { dictionary[SerializationKeys.images] = value.map { $0.dictionaryRepresentation() } }
        return dictionary
    }
    
    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
        self.enabled = aDecoder.decodeBool(forKey: SerializationKeys.enabled)
        self.images = aDecoder.decodeObject(forKey: SerializationKeys.images) as? [ImagesModel]
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(enabled, forKey: SerializationKeys.enabled)
        aCoder.encode(images, forKey: SerializationKeys.images)
    }
    
}

