//
//  ChildrenData.swift
//  RedditTest
//
//  Created by Amir Daliri on 17.07.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import Foundation
import ObjectMapper

class ChildrenData: Mappable, NSCoding {
    
    // MARK: Declaration for string constants to be used to decode and also serialize.
    private struct SerializationKeys {
        static let isRobotIndexable = "is_robot_indexable"
        static let quarantine = "quarantine"
        static let created = "created"
        static let isRedditMediaDomain = "is_reddit_media_domain"
        static let ups = "ups"
        static let locked = "locked"
        static let modReports = "mod_reports"
        static let isMeta = "is_meta"
        static let linkFlairType = "link_flair_type"
        static let name = "name"
        static let pwls = "pwls"
        static let wls = "wls"
        static let subredditId = "subreddit_id"
        static let canModPost = "can_mod_post"
        static let canGild = "can_gild"
        static let author = "author"
        static let totalAwardsReceived = "total_awards_received"
        static let subredditSubscribers = "subreddit_subscribers"
        static let id = "id"
        static let selftextHtml = "selftext_html"
        static let sendReplies = "send_replies"
        static let noFollow = "no_follow"
        static let isOriginalContent = "is_original_content"
        static let title = "title"
        static let spoiler = "spoiler"
        static let authorFlairTextColor = "author_flair_text_color"
        static let isCrosspostable = "is_crosspostable"
        static let linkFlairTextColor = "link_flair_text_color"
        static let selftext = "selftext"
        static let thumbnail = "thumbnail"
        static let allAwardings = "all_awardings"
        static let createdUtc = "created_utc"
        static let contestMode = "contest_mode"
        static let saved = "saved"
        static let linkFlairBackgroundColor = "link_flair_background_color"
        static let archived = "archived"
        static let subredditType = "subreddit_type"
        static let edited = "edited"
        static let authorFlairRichtext = "author_flair_richtext"
        static let mediaEmbed = "media_embed"
        static let domain = "domain"
        static let authorFlairBackgroundColor = "author_flair_background_color"
        static let linkFlairRichtext = "link_flair_richtext"
        static let gilded = "gilded"
        static let over18 = "over_18"
        static let isSelf = "is_self"
        static let numCrossposts = "num_crossposts"
        static let authorFlairText = "author_flair_text"
        static let preview = "preview"
        static let permalink = "permalink"
        static let visited = "visited"
        static let pinned = "pinned"
        static let mediaOnly = "media_only"
        static let stickied = "stickied"
        static let postHint = "post_hint"
        static let allowLiveComments = "allow_live_comments"
        static let downs = "downs"
        static let authorFlairType = "author_flair_type"
        static let url = "url"
        static let subreddit = "subreddit"
        static let parentWhitelistStatus = "parent_whitelist_status"
        static let subredditNamePrefixed = "subreddit_name_prefixed"
        static let gildings = "gildings"
        static let isVideo = "is_video"
        static let secureMediaEmbed = "secure_media_embed"
        static let hideScore = "hide_score"
        static let clicked = "clicked"
        static let whitelistStatus = "whitelist_status"
        static let score = "score"
        static let numComments = "num_comments"
        static let authorFullname = "author_fullname"
        static let hidden = "hidden"
        static let userReports = "user_reports"
        static let authorPatreonFlair = "author_patreon_flair"
    }
    
    // MARK: Properties
    var isRobotIndexable: Bool? = false
    var quarantine: Bool? = false
    var created: Int?
    var isRedditMediaDomain: Bool? = false
    var ups: Int?
    var locked: Bool? = false
    var modReports: [Any]?
    var isMeta: Bool? = false
    var linkFlairType: String?
    var name: String?
    var pwls: Int?
    var wls: Int?
    var subredditId: String?
    var canModPost: Bool? = false
    var canGild: Bool? = false
    var author: String?
    var totalAwardsReceived: Int?
    var subredditSubscribers: Int?
    var id: String?
    var selftextHtml: String?
    var sendReplies: Bool? = false
    var noFollow: Bool? = false
    var isOriginalContent: Bool? = false
    var title: String?
    var spoiler: Bool? = false
    var authorFlairTextColor: String?
    var isCrosspostable: Bool? = false
    var linkFlairTextColor: String?
    var selftext: String?
    var thumbnail: String?
    var allAwardings: [Any]?
    var createdUtc: Int?
    var contestMode: Bool? = false
    var saved: Bool? = false
    var linkFlairBackgroundColor: String?
    var archived: Bool? = false
    var subredditType: String?
    var edited: Bool? = false
    var authorFlairRichtext: [Any]?
    var mediaEmbed: MediaEmbed?
    var domain: String?
    var authorFlairBackgroundColor: String?
    var linkFlairRichtext: [Any]?
    var gilded: Int?
    var over18: Bool? = false
    var isSelf: Bool? = false
    var numCrossposts: Int?
    var authorFlairText: String?
    var preview: Preview?
    var permalink: String?
    var visited: Bool? = false
    var pinned: Bool? = false
    var mediaOnly: Bool? = false
    var stickied: Bool? = false
    var postHint: String?
    var allowLiveComments: Bool? = false
    var downs: Int?
    var authorFlairType: String?
    var url: String?
    var subreddit: String?
    var parentWhitelistStatus: String?
    var subredditNamePrefixed: String?
    var gildings: Gildings?
    var isVideo: Bool? = false
    var secureMediaEmbed: SecureMediaEmbed?
    var hideScore: Bool? = false
    var clicked: Bool? = false
    var whitelistStatus: String?
    var score: Int?
    var numComments: Int?
    var authorFullname: String?
    var hidden: Bool? = false
    var userReports: [Any]?
    var authorPatreonFlair: Bool? = false
    
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
        isRobotIndexable <- map[SerializationKeys.isRobotIndexable]
        quarantine <- map[SerializationKeys.quarantine]
        created <- map[SerializationKeys.created]
        isRedditMediaDomain <- map[SerializationKeys.isRedditMediaDomain]
        ups <- map[SerializationKeys.ups]
        locked <- map[SerializationKeys.locked]
        modReports <- map[SerializationKeys.modReports]
        isMeta <- map[SerializationKeys.isMeta]
        linkFlairType <- map[SerializationKeys.linkFlairType]
        name <- map[SerializationKeys.name]
        pwls <- map[SerializationKeys.pwls]
        wls <- map[SerializationKeys.wls]
        subredditId <- map[SerializationKeys.subredditId]
        canModPost <- map[SerializationKeys.canModPost]
        canGild <- map[SerializationKeys.canGild]
        author <- map[SerializationKeys.author]
        totalAwardsReceived <- map[SerializationKeys.totalAwardsReceived]
        subredditSubscribers <- map[SerializationKeys.subredditSubscribers]
        id <- map[SerializationKeys.id]
        selftextHtml <- map[SerializationKeys.selftextHtml]
        sendReplies <- map[SerializationKeys.sendReplies]
        noFollow <- map[SerializationKeys.noFollow]
        isOriginalContent <- map[SerializationKeys.isOriginalContent]
        title <- map[SerializationKeys.title]
        spoiler <- map[SerializationKeys.spoiler]
        authorFlairTextColor <- map[SerializationKeys.authorFlairTextColor]
        isCrosspostable <- map[SerializationKeys.isCrosspostable]
        linkFlairTextColor <- map[SerializationKeys.linkFlairTextColor]
        selftext <- map[SerializationKeys.selftext]
        thumbnail <- map[SerializationKeys.thumbnail]
        allAwardings <- map[SerializationKeys.allAwardings]
        createdUtc <- map[SerializationKeys.createdUtc]
        contestMode <- map[SerializationKeys.contestMode]
        saved <- map[SerializationKeys.saved]
        linkFlairBackgroundColor <- map[SerializationKeys.linkFlairBackgroundColor]
        archived <- map[SerializationKeys.archived]
        subredditType <- map[SerializationKeys.subredditType]
        edited <- map[SerializationKeys.edited]
        authorFlairRichtext <- map[SerializationKeys.authorFlairRichtext]
        mediaEmbed <- map[SerializationKeys.mediaEmbed]
        domain <- map[SerializationKeys.domain]
        authorFlairBackgroundColor <- map[SerializationKeys.authorFlairBackgroundColor]
        linkFlairRichtext <- map[SerializationKeys.linkFlairRichtext]
        gilded <- map[SerializationKeys.gilded]
        over18 <- map[SerializationKeys.over18]
        isSelf <- map[SerializationKeys.isSelf]
        numCrossposts <- map[SerializationKeys.numCrossposts]
        authorFlairText <- map[SerializationKeys.authorFlairText]
        preview <- map[SerializationKeys.preview]
        permalink <- map[SerializationKeys.permalink]
        visited <- map[SerializationKeys.visited]
        pinned <- map[SerializationKeys.pinned]
        mediaOnly <- map[SerializationKeys.mediaOnly]
        stickied <- map[SerializationKeys.stickied]
        postHint <- map[SerializationKeys.postHint]
        allowLiveComments <- map[SerializationKeys.allowLiveComments]
        downs <- map[SerializationKeys.downs]
        authorFlairType <- map[SerializationKeys.authorFlairType]
        url <- map[SerializationKeys.url]
        subreddit <- map[SerializationKeys.subreddit]
        parentWhitelistStatus <- map[SerializationKeys.parentWhitelistStatus]
        subredditNamePrefixed <- map[SerializationKeys.subredditNamePrefixed]
        gildings <- map[SerializationKeys.gildings]
        isVideo <- map[SerializationKeys.isVideo]
        secureMediaEmbed <- map[SerializationKeys.secureMediaEmbed]
        hideScore <- map[SerializationKeys.hideScore]
        clicked <- map[SerializationKeys.clicked]
        whitelistStatus <- map[SerializationKeys.whitelistStatus]
        score <- map[SerializationKeys.score]
        numComments <- map[SerializationKeys.numComments]
        authorFullname <- map[SerializationKeys.authorFullname]
        hidden <- map[SerializationKeys.hidden]
        userReports <- map[SerializationKeys.userReports]
        authorPatreonFlair <- map[SerializationKeys.authorPatreonFlair]
    }
    
    /// Generates description of the object in the form of a NSDictionary.
    ///
    /// - returns: A Key value pair containing all valid values in the object.
    public func dictionaryRepresentation() -> [String: Any] {
        var dictionary: [String: Any] = [:]
        dictionary[SerializationKeys.isRobotIndexable] = isRobotIndexable
        dictionary[SerializationKeys.quarantine] = quarantine
        if let value = created { dictionary[SerializationKeys.created] = value }
        dictionary[SerializationKeys.isRedditMediaDomain] = isRedditMediaDomain
        if let value = ups { dictionary[SerializationKeys.ups] = value }
        dictionary[SerializationKeys.locked] = locked
        if let value = modReports { dictionary[SerializationKeys.modReports] = value }
        dictionary[SerializationKeys.isMeta] = isMeta
        if let value = linkFlairType { dictionary[SerializationKeys.linkFlairType] = value }
        if let value = name { dictionary[SerializationKeys.name] = value }
        if let value = pwls { dictionary[SerializationKeys.pwls] = value }
        if let value = wls { dictionary[SerializationKeys.wls] = value }
        if let value = subredditId { dictionary[SerializationKeys.subredditId] = value }
        dictionary[SerializationKeys.canModPost] = canModPost
        dictionary[SerializationKeys.canGild] = canGild
        if let value = author { dictionary[SerializationKeys.author] = value }
        if let value = totalAwardsReceived { dictionary[SerializationKeys.totalAwardsReceived] = value }
        if let value = subredditSubscribers { dictionary[SerializationKeys.subredditSubscribers] = value }
        if let value = id { dictionary[SerializationKeys.id] = value }
        if let value = selftextHtml { dictionary[SerializationKeys.selftextHtml] = value }
        dictionary[SerializationKeys.sendReplies] = sendReplies
        dictionary[SerializationKeys.noFollow] = noFollow
        dictionary[SerializationKeys.isOriginalContent] = isOriginalContent
        if let value = title { dictionary[SerializationKeys.title] = value }
        dictionary[SerializationKeys.spoiler] = spoiler
        if let value = authorFlairTextColor { dictionary[SerializationKeys.authorFlairTextColor] = value }
        dictionary[SerializationKeys.isCrosspostable] = isCrosspostable
        if let value = linkFlairTextColor { dictionary[SerializationKeys.linkFlairTextColor] = value }
        if let value = selftext { dictionary[SerializationKeys.selftext] = value }
        if let value = thumbnail { dictionary[SerializationKeys.thumbnail] = value }
        if let value = allAwardings { dictionary[SerializationKeys.allAwardings] = value }
        if let value = createdUtc { dictionary[SerializationKeys.createdUtc] = value }
        dictionary[SerializationKeys.contestMode] = contestMode
        dictionary[SerializationKeys.saved] = saved
        if let value = linkFlairBackgroundColor { dictionary[SerializationKeys.linkFlairBackgroundColor] = value }
        dictionary[SerializationKeys.archived] = archived
        if let value = subredditType { dictionary[SerializationKeys.subredditType] = value }
        dictionary[SerializationKeys.edited] = edited
        if let value = authorFlairRichtext { dictionary[SerializationKeys.authorFlairRichtext] = value }
        if let value = mediaEmbed { dictionary[SerializationKeys.mediaEmbed] = value.dictionaryRepresentation() }
        if let value = domain { dictionary[SerializationKeys.domain] = value }
        if let value = authorFlairBackgroundColor { dictionary[SerializationKeys.authorFlairBackgroundColor] = value }
        if let value = linkFlairRichtext { dictionary[SerializationKeys.linkFlairRichtext] = value }
        if let value = gilded { dictionary[SerializationKeys.gilded] = value }
        dictionary[SerializationKeys.over18] = over18
        dictionary[SerializationKeys.isSelf] = isSelf
        if let value = numCrossposts { dictionary[SerializationKeys.numCrossposts] = value }
        if let value = authorFlairText { dictionary[SerializationKeys.authorFlairText] = value }
        if let value = preview { dictionary[SerializationKeys.preview] = value.dictionaryRepresentation() }
        if let value = permalink { dictionary[SerializationKeys.permalink] = value }
        dictionary[SerializationKeys.visited] = visited
        dictionary[SerializationKeys.pinned] = pinned
        dictionary[SerializationKeys.mediaOnly] = mediaOnly
        dictionary[SerializationKeys.stickied] = stickied
        if let value = postHint { dictionary[SerializationKeys.postHint] = value }
        dictionary[SerializationKeys.allowLiveComments] = allowLiveComments
        if let value = downs { dictionary[SerializationKeys.downs] = value }
        if let value = authorFlairType { dictionary[SerializationKeys.authorFlairType] = value }
        if let value = url { dictionary[SerializationKeys.url] = value }
        if let value = subreddit { dictionary[SerializationKeys.subreddit] = value }
        if let value = parentWhitelistStatus { dictionary[SerializationKeys.parentWhitelistStatus] = value }
        if let value = subredditNamePrefixed { dictionary[SerializationKeys.subredditNamePrefixed] = value }
        if let value = gildings { dictionary[SerializationKeys.gildings] = value.dictionaryRepresentation() }
        dictionary[SerializationKeys.isVideo] = isVideo
        if let value = secureMediaEmbed { dictionary[SerializationKeys.secureMediaEmbed] = value.dictionaryRepresentation() }
        dictionary[SerializationKeys.hideScore] = hideScore
        dictionary[SerializationKeys.clicked] = clicked
        if let value = whitelistStatus { dictionary[SerializationKeys.whitelistStatus] = value }
        if let value = score { dictionary[SerializationKeys.score] = value }
        if let value = numComments { dictionary[SerializationKeys.numComments] = value }
        if let value = authorFullname { dictionary[SerializationKeys.authorFullname] = value }
        dictionary[SerializationKeys.hidden] = hidden
        if let value = userReports { dictionary[SerializationKeys.userReports] = value }
        dictionary[SerializationKeys.authorPatreonFlair] = authorPatreonFlair
        return dictionary
    }
    
    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
        self.isRobotIndexable = aDecoder.decodeBool(forKey: SerializationKeys.isRobotIndexable)
        self.quarantine = aDecoder.decodeBool(forKey: SerializationKeys.quarantine)
        self.created = aDecoder.decodeObject(forKey: SerializationKeys.created) as? Int
        self.isRedditMediaDomain = aDecoder.decodeBool(forKey: SerializationKeys.isRedditMediaDomain)
        self.ups = aDecoder.decodeObject(forKey: SerializationKeys.ups) as? Int
        self.locked = aDecoder.decodeBool(forKey: SerializationKeys.locked)
        self.modReports = aDecoder.decodeObject(forKey: SerializationKeys.modReports) as? [Any]
        self.isMeta = aDecoder.decodeBool(forKey: SerializationKeys.isMeta)
        self.linkFlairType = aDecoder.decodeObject(forKey: SerializationKeys.linkFlairType) as? String
        self.name = aDecoder.decodeObject(forKey: SerializationKeys.name) as? String
        self.pwls = aDecoder.decodeObject(forKey: SerializationKeys.pwls) as? Int
        self.wls = aDecoder.decodeObject(forKey: SerializationKeys.wls) as? Int
        self.subredditId = aDecoder.decodeObject(forKey: SerializationKeys.subredditId) as? String
        self.canModPost = aDecoder.decodeBool(forKey: SerializationKeys.canModPost)
        self.canGild = aDecoder.decodeBool(forKey: SerializationKeys.canGild)
        self.author = aDecoder.decodeObject(forKey: SerializationKeys.author) as? String
        self.totalAwardsReceived = aDecoder.decodeObject(forKey: SerializationKeys.totalAwardsReceived) as? Int
        self.subredditSubscribers = aDecoder.decodeObject(forKey: SerializationKeys.subredditSubscribers) as? Int
        self.id = aDecoder.decodeObject(forKey: SerializationKeys.id) as? String
        self.selftextHtml = aDecoder.decodeObject(forKey: SerializationKeys.selftextHtml) as? String
        self.sendReplies = aDecoder.decodeBool(forKey: SerializationKeys.sendReplies)
        self.noFollow = aDecoder.decodeBool(forKey: SerializationKeys.noFollow)
        self.isOriginalContent = aDecoder.decodeBool(forKey: SerializationKeys.isOriginalContent)
        self.title = aDecoder.decodeObject(forKey: SerializationKeys.title) as? String
        self.spoiler = aDecoder.decodeBool(forKey: SerializationKeys.spoiler)
        self.authorFlairTextColor = aDecoder.decodeObject(forKey: SerializationKeys.authorFlairTextColor) as? String
        self.isCrosspostable = aDecoder.decodeBool(forKey: SerializationKeys.isCrosspostable)
        self.linkFlairTextColor = aDecoder.decodeObject(forKey: SerializationKeys.linkFlairTextColor) as? String
        self.selftext = aDecoder.decodeObject(forKey: SerializationKeys.selftext) as? String
        self.thumbnail = aDecoder.decodeObject(forKey: SerializationKeys.thumbnail) as? String
        self.allAwardings = aDecoder.decodeObject(forKey: SerializationKeys.allAwardings) as? [Any]
        self.createdUtc = aDecoder.decodeObject(forKey: SerializationKeys.createdUtc) as? Int
        self.contestMode = aDecoder.decodeBool(forKey: SerializationKeys.contestMode)
        self.saved = aDecoder.decodeBool(forKey: SerializationKeys.saved)
        self.linkFlairBackgroundColor = aDecoder.decodeObject(forKey: SerializationKeys.linkFlairBackgroundColor) as? String
        self.archived = aDecoder.decodeBool(forKey: SerializationKeys.archived)
        self.subredditType = aDecoder.decodeObject(forKey: SerializationKeys.subredditType) as? String
        self.edited = aDecoder.decodeBool(forKey: SerializationKeys.edited)
        self.authorFlairRichtext = aDecoder.decodeObject(forKey: SerializationKeys.authorFlairRichtext) as? [Any]
        self.mediaEmbed = aDecoder.decodeObject(forKey: SerializationKeys.mediaEmbed) as? MediaEmbed
        self.domain = aDecoder.decodeObject(forKey: SerializationKeys.domain) as? String
        self.authorFlairBackgroundColor = aDecoder.decodeObject(forKey: SerializationKeys.authorFlairBackgroundColor) as? String
        self.linkFlairRichtext = aDecoder.decodeObject(forKey: SerializationKeys.linkFlairRichtext) as? [Any]
        self.gilded = aDecoder.decodeObject(forKey: SerializationKeys.gilded) as? Int
        self.over18 = aDecoder.decodeBool(forKey: SerializationKeys.over18)
        self.isSelf = aDecoder.decodeBool(forKey: SerializationKeys.isSelf)
        self.numCrossposts = aDecoder.decodeObject(forKey: SerializationKeys.numCrossposts) as? Int
        self.authorFlairText = aDecoder.decodeObject(forKey: SerializationKeys.authorFlairText) as? String
        self.preview = aDecoder.decodeObject(forKey: SerializationKeys.preview) as? Preview
        self.permalink = aDecoder.decodeObject(forKey: SerializationKeys.permalink) as? String
        self.visited = aDecoder.decodeBool(forKey: SerializationKeys.visited)
        self.pinned = aDecoder.decodeBool(forKey: SerializationKeys.pinned)
        self.mediaOnly = aDecoder.decodeBool(forKey: SerializationKeys.mediaOnly)
        self.stickied = aDecoder.decodeBool(forKey: SerializationKeys.stickied)
        self.postHint = aDecoder.decodeObject(forKey: SerializationKeys.postHint) as? String
        self.allowLiveComments = aDecoder.decodeBool(forKey: SerializationKeys.allowLiveComments)
        self.downs = aDecoder.decodeObject(forKey: SerializationKeys.downs) as? Int
        self.authorFlairType = aDecoder.decodeObject(forKey: SerializationKeys.authorFlairType) as? String
        self.url = aDecoder.decodeObject(forKey: SerializationKeys.url) as? String
        self.subreddit = aDecoder.decodeObject(forKey: SerializationKeys.subreddit) as? String
        self.parentWhitelistStatus = aDecoder.decodeObject(forKey: SerializationKeys.parentWhitelistStatus) as? String
        self.subredditNamePrefixed = aDecoder.decodeObject(forKey: SerializationKeys.subredditNamePrefixed) as? String
        self.gildings = aDecoder.decodeObject(forKey: SerializationKeys.gildings) as? Gildings
        self.isVideo = aDecoder.decodeBool(forKey: SerializationKeys.isVideo)
        self.secureMediaEmbed = aDecoder.decodeObject(forKey: SerializationKeys.secureMediaEmbed) as? SecureMediaEmbed
        self.hideScore = aDecoder.decodeBool(forKey: SerializationKeys.hideScore)
        self.clicked = aDecoder.decodeBool(forKey: SerializationKeys.clicked)
        self.whitelistStatus = aDecoder.decodeObject(forKey: SerializationKeys.whitelistStatus) as? String
        self.score = aDecoder.decodeObject(forKey: SerializationKeys.score) as? Int
        self.numComments = aDecoder.decodeObject(forKey: SerializationKeys.numComments) as? Int
        self.authorFullname = aDecoder.decodeObject(forKey: SerializationKeys.authorFullname) as? String
        self.hidden = aDecoder.decodeBool(forKey: SerializationKeys.hidden)
        self.userReports = aDecoder.decodeObject(forKey: SerializationKeys.userReports) as? [Any]
        self.authorPatreonFlair = aDecoder.decodeBool(forKey: SerializationKeys.authorPatreonFlair)
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(isRobotIndexable, forKey: SerializationKeys.isRobotIndexable)
        aCoder.encode(quarantine, forKey: SerializationKeys.quarantine)
        aCoder.encode(created, forKey: SerializationKeys.created)
        aCoder.encode(isRedditMediaDomain, forKey: SerializationKeys.isRedditMediaDomain)
        aCoder.encode(ups, forKey: SerializationKeys.ups)
        aCoder.encode(locked, forKey: SerializationKeys.locked)
        aCoder.encode(modReports, forKey: SerializationKeys.modReports)
        aCoder.encode(isMeta, forKey: SerializationKeys.isMeta)
        aCoder.encode(linkFlairType, forKey: SerializationKeys.linkFlairType)
        aCoder.encode(name, forKey: SerializationKeys.name)
        aCoder.encode(pwls, forKey: SerializationKeys.pwls)
        aCoder.encode(wls, forKey: SerializationKeys.wls)
        aCoder.encode(subredditId, forKey: SerializationKeys.subredditId)
        aCoder.encode(canModPost, forKey: SerializationKeys.canModPost)
        aCoder.encode(canGild, forKey: SerializationKeys.canGild)
        aCoder.encode(author, forKey: SerializationKeys.author)
        aCoder.encode(totalAwardsReceived, forKey: SerializationKeys.totalAwardsReceived)
        aCoder.encode(subredditSubscribers, forKey: SerializationKeys.subredditSubscribers)
        aCoder.encode(id, forKey: SerializationKeys.id)
        aCoder.encode(selftextHtml, forKey: SerializationKeys.selftextHtml)
        aCoder.encode(sendReplies, forKey: SerializationKeys.sendReplies)
        aCoder.encode(noFollow, forKey: SerializationKeys.noFollow)
        aCoder.encode(isOriginalContent, forKey: SerializationKeys.isOriginalContent)
        aCoder.encode(title, forKey: SerializationKeys.title)
        aCoder.encode(spoiler, forKey: SerializationKeys.spoiler)
        aCoder.encode(authorFlairTextColor, forKey: SerializationKeys.authorFlairTextColor)
        aCoder.encode(isCrosspostable, forKey: SerializationKeys.isCrosspostable)
        aCoder.encode(linkFlairTextColor, forKey: SerializationKeys.linkFlairTextColor)
        aCoder.encode(selftext, forKey: SerializationKeys.selftext)
        aCoder.encode(thumbnail, forKey: SerializationKeys.thumbnail)
        aCoder.encode(allAwardings, forKey: SerializationKeys.allAwardings)
        aCoder.encode(createdUtc, forKey: SerializationKeys.createdUtc)
        aCoder.encode(contestMode, forKey: SerializationKeys.contestMode)
        aCoder.encode(saved, forKey: SerializationKeys.saved)
        aCoder.encode(linkFlairBackgroundColor, forKey: SerializationKeys.linkFlairBackgroundColor)
        aCoder.encode(archived, forKey: SerializationKeys.archived)
        aCoder.encode(subredditType, forKey: SerializationKeys.subredditType)
        aCoder.encode(edited, forKey: SerializationKeys.edited)
        aCoder.encode(authorFlairRichtext, forKey: SerializationKeys.authorFlairRichtext)
        aCoder.encode(mediaEmbed, forKey: SerializationKeys.mediaEmbed)
        aCoder.encode(domain, forKey: SerializationKeys.domain)
        aCoder.encode(authorFlairBackgroundColor, forKey: SerializationKeys.authorFlairBackgroundColor)
        aCoder.encode(linkFlairRichtext, forKey: SerializationKeys.linkFlairRichtext)
        aCoder.encode(gilded, forKey: SerializationKeys.gilded)
        aCoder.encode(over18, forKey: SerializationKeys.over18)
        aCoder.encode(isSelf, forKey: SerializationKeys.isSelf)
        aCoder.encode(numCrossposts, forKey: SerializationKeys.numCrossposts)
        aCoder.encode(authorFlairText, forKey: SerializationKeys.authorFlairText)
        aCoder.encode(preview, forKey: SerializationKeys.preview)
        aCoder.encode(permalink, forKey: SerializationKeys.permalink)
        aCoder.encode(visited, forKey: SerializationKeys.visited)
        aCoder.encode(pinned, forKey: SerializationKeys.pinned)
        aCoder.encode(mediaOnly, forKey: SerializationKeys.mediaOnly)
        aCoder.encode(stickied, forKey: SerializationKeys.stickied)
        aCoder.encode(postHint, forKey: SerializationKeys.postHint)
        aCoder.encode(allowLiveComments, forKey: SerializationKeys.allowLiveComments)
        aCoder.encode(downs, forKey: SerializationKeys.downs)
        aCoder.encode(authorFlairType, forKey: SerializationKeys.authorFlairType)
        aCoder.encode(url, forKey: SerializationKeys.url)
        aCoder.encode(subreddit, forKey: SerializationKeys.subreddit)
        aCoder.encode(parentWhitelistStatus, forKey: SerializationKeys.parentWhitelistStatus)
        aCoder.encode(subredditNamePrefixed, forKey: SerializationKeys.subredditNamePrefixed)
        aCoder.encode(gildings, forKey: SerializationKeys.gildings)
        aCoder.encode(isVideo, forKey: SerializationKeys.isVideo)
        aCoder.encode(secureMediaEmbed, forKey: SerializationKeys.secureMediaEmbed)
        aCoder.encode(hideScore, forKey: SerializationKeys.hideScore)
        aCoder.encode(clicked, forKey: SerializationKeys.clicked)
        aCoder.encode(whitelistStatus, forKey: SerializationKeys.whitelistStatus)
        aCoder.encode(score, forKey: SerializationKeys.score)
        aCoder.encode(numComments, forKey: SerializationKeys.numComments)
        aCoder.encode(authorFullname, forKey: SerializationKeys.authorFullname)
        aCoder.encode(hidden, forKey: SerializationKeys.hidden)
        aCoder.encode(userReports, forKey: SerializationKeys.userReports)
        aCoder.encode(authorPatreonFlair, forKey: SerializationKeys.authorPatreonFlair)
    }
    
}
