//
// UserProfileActivityAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class UserProfileActivityAllOf: Codable, JSONEncodable, Hashable {

    public var totalDistance: Double?
    public var maxSpeed: Double?
    public var minSpeed: Double?
    public var maxAltitude: Double?
    public var minAltitude: Double?
    public var country: String?
    public var city: String?
    public var activitiesNumber: Int?
    public var firstName: String?
    public var lastName: String?
    public var title: String?
    public var photoId: String?

    public init(totalDistance: Double? = nil, maxSpeed: Double? = nil, minSpeed: Double? = nil, maxAltitude: Double? = nil, minAltitude: Double? = nil, country: String? = nil, city: String? = nil, activitiesNumber: Int? = nil, firstName: String? = nil, lastName: String? = nil, title: String? = nil, photoId: String? = nil) {
        self.totalDistance = totalDistance
        self.maxSpeed = maxSpeed
        self.minSpeed = minSpeed
        self.maxAltitude = maxAltitude
        self.minAltitude = minAltitude
        self.country = country
        self.city = city
        self.activitiesNumber = activitiesNumber
        self.firstName = firstName
        self.lastName = lastName
        self.title = title
        self.photoId = photoId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case totalDistance
        case maxSpeed
        case minSpeed
        case maxAltitude
        case minAltitude
        case country
        case city
        case activitiesNumber
        case firstName
        case lastName
        case title
        case photoId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(totalDistance, forKey: .totalDistance)
        try container.encodeIfPresent(maxSpeed, forKey: .maxSpeed)
        try container.encodeIfPresent(minSpeed, forKey: .minSpeed)
        try container.encodeIfPresent(maxAltitude, forKey: .maxAltitude)
        try container.encodeIfPresent(minAltitude, forKey: .minAltitude)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(activitiesNumber, forKey: .activitiesNumber)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(photoId, forKey: .photoId)
    }

    public static func == (lhs: UserProfileActivityAllOf, rhs: UserProfileActivityAllOf) -> Bool {
        lhs.totalDistance == rhs.totalDistance &&
        lhs.maxSpeed == rhs.maxSpeed &&
        lhs.minSpeed == rhs.minSpeed &&
        lhs.maxAltitude == rhs.maxAltitude &&
        lhs.minAltitude == rhs.minAltitude &&
        lhs.country == rhs.country &&
        lhs.city == rhs.city &&
        lhs.activitiesNumber == rhs.activitiesNumber &&
        lhs.firstName == rhs.firstName &&
        lhs.lastName == rhs.lastName &&
        lhs.title == rhs.title &&
        lhs.photoId == rhs.photoId
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(totalDistance?.hashValue)
        hasher.combine(maxSpeed?.hashValue)
        hasher.combine(minSpeed?.hashValue)
        hasher.combine(maxAltitude?.hashValue)
        hasher.combine(minAltitude?.hashValue)
        hasher.combine(country?.hashValue)
        hasher.combine(city?.hashValue)
        hasher.combine(activitiesNumber?.hashValue)
        hasher.combine(firstName?.hashValue)
        hasher.combine(lastName?.hashValue)
        hasher.combine(title?.hashValue)
        hasher.combine(photoId?.hashValue)
        
    }
}

