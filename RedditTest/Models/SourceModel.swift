//
//  SourceModel.swift
//  RedditTest
//
//  Created by Amir Daliri on 17.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import Foundation
import ObjectMapper

class SourceModel: Mappable, NSCoding {
    
    // MARK: Declaration for string constants to be used to decode and also serialize.
    private struct SerializationKeys {
        static let height = "height"
        static let url = "url"
        static let width = "width"
    }
    
    // MARK: Properties
    var height: Int?
    var url: String?
    var width: Int?
    
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
        height <- map[SerializationKeys.height]
        url <- map[SerializationKeys.url]
        width <- map[SerializationKeys.width]
    }
    
    /// Generates description of the object in the form of a NSDictionary.
    ///
    /// - returns: A Key value pair containing all valid values in the object.
    public func dictionaryRepresentation() -> [String: Any] {
        var dictionary: [String: Any] = [:]
        if let value = height { dictionary[SerializationKeys.height] = value }
        if let value = url { dictionary[SerializationKeys.url] = value }
        if let value = width { dictionary[SerializationKeys.width] = value }
        return dictionary
    }
    
    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
        self.height = aDecoder.decodeObject(forKey: SerializationKeys.height) as? Int
        self.url = aDecoder.decodeObject(forKey: SerializationKeys.url) as? String
        self.width = aDecoder.decodeObject(forKey: SerializationKeys.width) as? Int
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(height, forKey: SerializationKeys.height)
        aCoder.encode(url, forKey: SerializationKeys.url)
        aCoder.encode(width, forKey: SerializationKeys.width)
    }
    
}
