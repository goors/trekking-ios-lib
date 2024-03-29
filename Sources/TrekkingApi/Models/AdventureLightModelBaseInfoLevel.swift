//
// AdventureLightModelBaseInfoLevel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum AdventureLightModelBaseInfoLevel: Codable, JSONEncodable, Hashable {
    case typeUserAdventureLevel(UserAdventureLevel)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeUserAdventureLevel(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(UserAdventureLevel.self) {
            self = .typeUserAdventureLevel(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of AdventureLightModelBaseInfoLevel"))
        }
    }
}

