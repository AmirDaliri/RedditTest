//
//  ImagesModel.swift
//  RedditTest
//
//  Created by Amir Daliri on 17.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import Foundation
import ObjectMapper

class ImagesModel: Mappable, NSCoding {
    
    // MARK: Declaration for string constants to be used to decode and also serialize.
    private struct SerializationKeys {
        static let id = "id"
        static let variants = "variants"
        static let source = "source"
        static let resolutions = "resolutions"
    }
    
    // MARK: Properties
    var id: String?
    var variants: Variants?
    var source: SourceModel?
    var resolutions: [Resolutions]?
    
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
        id <- map[SerializationKeys.id]
        variants <- map[SerializationKeys.variants]
        source <- map[SerializationKeys.source]
        resolutions <- map[SerializationKeys.resolutions]
    }
    
    /// Generates description of the object in the form of a NSDictionary.
    ///
    /// - returns: A Key value pair containing all valid values in the object.
    public func dictionaryRepresentation() -> [String: Any] {
        var dictionary: [String: Any] = [:]
        if let value = id { dictionary[SerializationKeys.id] = value }
        if let value = variants { dictionary[SerializationKeys.variants] = value.dictionaryRepresentation() }
        if let value = source { dictionary[SerializationKeys.source] = value.dictionaryRepresentation() }
        if let value = resolutions { dictionary[SerializationKeys.resolutions] = value.map { $0.dictionaryRepresentation() } }
        return dictionary
    }
    
    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
        self.id = aDecoder.decodeObject(forKey: SerializationKeys.id) as? String
        self.variants = aDecoder.decodeObject(forKey: SerializationKeys.variants) as? Variants
        self.source = aDecoder.decodeObject(forKey: SerializationKeys.source) as? SourceModel
        self.resolutions = aDecoder.decodeObject(forKey: SerializationKeys.resolutions) as? [Resolutions]
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: SerializationKeys.id)
        aCoder.encode(variants, forKey: SerializationKeys.variants)
        aCoder.encode(source, forKey: SerializationKeys.source)
        aCoder.encode(resolutions, forKey: SerializationKeys.resolutions)
    }
    
}
