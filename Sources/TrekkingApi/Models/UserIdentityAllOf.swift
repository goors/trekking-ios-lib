//
// UserIdentityAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class UserIdentityAllOf: Codable, JSONEncodable, Hashable {

    public var firstName: String?
    public var lastName: String?
    public var photoId: String?

    public init(firstName: String? = nil, lastName: String? = nil, photoId: String? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.photoId = photoId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case firstName
        case lastName
        case photoId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(photoId, forKey: .photoId)
    }

    public static func == (lhs: UserIdentityAllOf, rhs: UserIdentityAllOf) -> Bool {
        lhs.firstName == rhs.firstName &&
        lhs.lastName == rhs.lastName &&
        lhs.photoId == rhs.photoId
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(firstName?.hashValue)
        hasher.combine(lastName?.hashValue)
        hasher.combine(photoId?.hashValue)
        
    }
}

