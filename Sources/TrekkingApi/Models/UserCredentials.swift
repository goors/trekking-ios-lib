//
// UserCredentials.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class UserCredentials: Codable, JSONEncodable, Hashable {

    static let emailRule = StringRule(minLength: 0, maxLength: 100, pattern: nil)
    static let passwordRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var persistent: Bool?
    public var email: String
    public var password: String

    public init(persistent: Bool? = nil, email: String, password: String) {
        self.persistent = persistent
        self.email = email
        self.password = password
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case persistent
        case email
        case password
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(persistent, forKey: .persistent)
        try container.encode(email, forKey: .email)
        try container.encode(password, forKey: .password)
    }

    public static func == (lhs: UserCredentials, rhs: UserCredentials) -> Bool {
        lhs.persistent == rhs.persistent &&
        lhs.email == rhs.email &&
        lhs.password == rhs.password
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(persistent?.hashValue)
        hasher.combine(email.hashValue)
        hasher.combine(password.hashValue)
        
    }
}

