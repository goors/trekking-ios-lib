//
// UserModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class UserModel: Codable, JSONEncodable, Hashable {

    static let emailRule = StringRule(minLength: 0, maxLength: 100, pattern: nil)
    static let firstNameRule = StringRule(minLength: 0, maxLength: 45, pattern: nil)
    static let lastnameRule = StringRule(minLength: 0, maxLength: 45, pattern: nil)
    public var id: String?
    public var createdAt: Date?
    public var updatedAt: Date?
    public var role: UserRole?
    public var password: String?
    public var photo: URL?
    public var email: String
    public var firstName: String?
    public var lastname: String?
    public var news: Bool?
    public var title: String?
    public var deviceId: String?
    public var deviceType: UserDeviceType?
    public var photoId: String?
    public var shareProfile: Bool?
    public var shareActivities: Bool?
    public var syncStatus: Bool?
    public var country: String?
    public var city: String?
    public var zip: String?
    public var locality: String?
    public var osmId: Int?

    public init(id: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, role: UserRole? = nil, password: String? = nil, photo: URL? = nil, email: String, firstName: String? = nil, lastname: String? = nil, news: Bool? = nil, title: String? = nil, deviceId: String? = nil, deviceType: UserDeviceType? = nil, photoId: String? = nil, shareProfile: Bool? = nil, shareActivities: Bool? = nil,
                syncStatus: Bool? = nil,
                country: String? = nil,
                city: String? = nil,
                zip: String? = nil,
                locality: String? = nil,
                osmId: Int? = nil
    ) {
        self.id = id
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.role = role
        self.password = password
        self.photo = photo
        self.email = email
        self.firstName = firstName
        self.lastname = lastname
        self.news = news
        self.title = title
        self.deviceId = deviceId
        self.deviceType = deviceType
        self.photoId = photoId
        self.shareProfile = shareProfile
        self.shareActivities = shareActivities
        self.syncStatus = syncStatus
        self.country = country
        self.city = city
        self.zip = zip
        self.locality = locality
        self.osmId = osmId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case createdAt
        case updatedAt
        case role
        case password
        case photo
        case email
        case firstName
        case lastname
        case news
        case title
        case deviceId
        case deviceType
        case photoId
        case shareProfile
        case shareActivities
        case syncStatus
        case country
        case city
        case zip
        case locality
        case osmId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(role, forKey: .role)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(photo, forKey: .photo)
        try container.encode(email, forKey: .email)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastname, forKey: .lastname)
        try container.encodeIfPresent(news, forKey: .news)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(deviceType, forKey: .deviceType)
        try container.encodeIfPresent(photoId, forKey: .photoId)
        try container.encodeIfPresent(shareProfile, forKey: .shareProfile)
        try container.encodeIfPresent(shareActivities, forKey: .shareActivities)
        try container.encodeIfPresent(syncStatus, forKey: .syncStatus)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(zip, forKey: .zip)
        try container.encodeIfPresent(locality, forKey: .locality)
        try container.encodeIfPresent(osmId, forKey: .osmId)
    }

    public static func == (lhs: UserModel, rhs: UserModel) -> Bool {
        lhs.id == rhs.id &&
        lhs.createdAt == rhs.createdAt &&
        lhs.updatedAt == rhs.updatedAt &&
        lhs.role == rhs.role &&
        lhs.password == rhs.password &&
        lhs.photo == rhs.photo &&
        lhs.email == rhs.email &&
        lhs.firstName == rhs.firstName &&
        lhs.lastname == rhs.lastname &&
        lhs.news == rhs.news &&
        lhs.title == rhs.title &&
        lhs.deviceId == rhs.deviceId &&
        lhs.deviceType == rhs.deviceType &&
        lhs.photoId == rhs.photoId &&
        lhs.shareProfile == rhs.shareProfile &&
        lhs.shareActivities == rhs.shareActivities &&
        lhs.syncStatus == rhs.syncStatus &&
        lhs.country == rhs.country &&
        lhs.city == rhs.city &&
        lhs.zip == rhs.zip &&
        lhs.locality == rhs.locality &&
        lhs.osmId == rhs.osmId
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id?.hashValue)
        hasher.combine(createdAt?.hashValue)
        hasher.combine(updatedAt?.hashValue)
        hasher.combine(role?.hashValue)
        hasher.combine(password?.hashValue)
        hasher.combine(photo?.hashValue)
        hasher.combine(email.hashValue)
        hasher.combine(firstName?.hashValue)
        hasher.combine(lastname?.hashValue)
        hasher.combine(news?.hashValue)
        hasher.combine(title?.hashValue)
        hasher.combine(deviceId?.hashValue)
        hasher.combine(deviceType?.hashValue)
        hasher.combine(photoId?.hashValue)
        hasher.combine(shareProfile?.hashValue)
        hasher.combine(shareActivities?.hashValue)
        hasher.combine(syncStatus?.hashValue)
        hasher.combine(country?.hashValue)
        hasher.combine(city?.hashValue)
        hasher.combine(zip?.hashValue)
        hasher.combine(locality?.hashValue)
        hasher.combine(osmId?.hashValue)
        
    }
}
