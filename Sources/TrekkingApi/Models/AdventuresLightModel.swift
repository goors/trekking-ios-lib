//
// AdventuresLightModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class AdventuresLightModel: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var createdAt: Date?
    public var updatedAt: Date?
    public var baseInfo: AdventuresLightModelAllOfBaseInfo?
    public var geoInfo: AdventuresLightModelAllOfGeoInfo?
    public var categories: AdventuresLightModelAllOfCategory?
    public var mediaInfo: AdventuresLightModelAllOfMediaInfo?
    public var userProfile: AdventuresLightModelAllOfUserProfile?
    public var rawData: String?
    public var trekk: AnyCodable?
    public var slug: String?

    public init(id: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, baseInfo: AdventuresLightModelAllOfBaseInfo? = nil, geoInfo: AdventuresLightModelAllOfGeoInfo? = nil, categories: AdventuresLightModelAllOfCategory? = nil, mediaInfo: AdventuresLightModelAllOfMediaInfo? = nil, userProfile: AdventuresLightModelAllOfUserProfile? = nil, rawData: String? = nil, trekk: AnyCodable? = nil, slug: String? = nil) {
        self.id = id
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.baseInfo = baseInfo
        self.geoInfo = geoInfo
        self.categories = categories
        self.mediaInfo = mediaInfo
        self.userProfile = userProfile
        self.rawData = rawData
        self.trekk = trekk
        self.slug = slug
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case createdAt
        case updatedAt
        case baseInfo
        case geoInfo
        case categories
        case mediaInfo
        case userProfile
        case rawData
        case trekk
        case slug
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(baseInfo, forKey: .baseInfo)
        try container.encodeIfPresent(geoInfo, forKey: .geoInfo)
        try container.encodeIfPresent(categories, forKey: .categories)
        try container.encodeIfPresent(mediaInfo, forKey: .mediaInfo)
        try container.encodeIfPresent(userProfile, forKey: .userProfile)
        try container.encodeIfPresent(rawData, forKey: .rawData)
        try container.encodeIfPresent(trekk, forKey: .trekk)
        try container.encodeIfPresent(slug, forKey: .slug)
    }

    public static func == (lhs: AdventuresLightModel, rhs: AdventuresLightModel) -> Bool {
        lhs.id == rhs.id &&
        lhs.createdAt == rhs.createdAt &&
        lhs.updatedAt == rhs.updatedAt &&
        lhs.baseInfo == rhs.baseInfo &&
        lhs.geoInfo == rhs.geoInfo &&
        lhs.categories == rhs.categories &&
        lhs.mediaInfo == rhs.mediaInfo &&
        lhs.userProfile == rhs.userProfile &&
        lhs.rawData == rhs.rawData &&
        lhs.trekk == rhs.trekk &&
        lhs.slug == rhs.slug
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id?.hashValue)
        hasher.combine(createdAt?.hashValue)
        hasher.combine(updatedAt?.hashValue)
        hasher.combine(baseInfo?.hashValue)
        hasher.combine(geoInfo?.hashValue)
        hasher.combine(categories?.hashValue)
        hasher.combine(mediaInfo?.hashValue)
        hasher.combine(userProfile?.hashValue)
        hasher.combine(rawData?.hashValue)
        hasher.combine(trekk?.hashValue)
        hasher.combine(slug?.hashValue)
        
    }
}

