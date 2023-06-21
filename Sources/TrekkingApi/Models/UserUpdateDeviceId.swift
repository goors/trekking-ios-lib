//
// UserUpdateDeviceId.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class UserUpdateDeviceId: Codable, JSONEncodable, Hashable {

    public var deviceId: String?
    public var deviceType: UserDeviceType?

    public init(deviceId: String? = nil, deviceType: UserDeviceType? = nil) {
        self.deviceId = deviceId
        self.deviceType = deviceType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deviceId
        case deviceType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(deviceType, forKey: .deviceType)
    }

    public static func == (lhs: UserUpdateDeviceId, rhs: UserUpdateDeviceId) -> Bool {
        lhs.deviceId == rhs.deviceId &&
        lhs.deviceType == rhs.deviceType
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(deviceId?.hashValue)
        hasher.combine(deviceType?.hashValue)
        
    }
}

