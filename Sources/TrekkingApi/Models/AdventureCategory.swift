//
// AdventureCategory.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class AdventureCategory: Codable, JSONEncodable, Hashable {

    public var id: Int64?
    public var title: String?
    public var icon: String?
    public var createdAt: Date?
    public var updatedAt: Date?
    public var publicId: String?

    public init(id: Int64? = nil, title: String? = nil, icon: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, publicId: String? = nil) {
        self.id = id
        self.title = title
        self.icon = icon
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.publicId = publicId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case icon
        case createdAt
        case updatedAt
        case publicId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(publicId, forKey: .publicId)
    }

    public static func == (lhs: AdventureCategory, rhs: AdventureCategory) -> Bool {
        lhs.id == rhs.id &&
        lhs.title == rhs.title &&
        lhs.icon == rhs.icon &&
        lhs.createdAt == rhs.createdAt &&
        lhs.updatedAt == rhs.updatedAt &&
        lhs.publicId == rhs.publicId
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id?.hashValue)
        hasher.combine(title?.hashValue)
        hasher.combine(icon?.hashValue)
        hasher.combine(createdAt?.hashValue)
        hasher.combine(updatedAt?.hashValue)
        hasher.combine(publicId?.hashValue)
        
    }
}
