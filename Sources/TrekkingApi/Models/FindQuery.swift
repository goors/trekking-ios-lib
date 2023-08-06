//
// AdventuresQuery.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class FindQuery: Codable, JSONEncodable, Hashable {

    
    public var text: String
    public var suggestionType: SearchSuggestionType
    public var maxItemCount: Int

    public init(text: String, suggestionType: SearchSuggestionType, maxItemCount: Int = 6) {
        self.text = text
        self.suggestionType = suggestionType
        self.maxItemCount = maxItemCount
        
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case text
        case suggestionType
        case maxItemCount
        
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(suggestionType, forKey: .suggestionType)
        try container.encodeIfPresent(maxItemCount, forKey: .maxItemCount)
        
    }

    public static func == (lhs: FindQuery, rhs: FindQuery) -> Bool {
        lhs.text == rhs.text &&
        lhs.suggestionType == rhs.suggestionType &&
        lhs.maxItemCount == rhs.maxItemCount
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(text.hashValue)
        hasher.combine(suggestionType.hashValue)
        hasher.combine(maxItemCount.hashValue)
        
        
    }
}

public enum SearchSuggestionType : Int, Codable, CaseIterable {
    case User = 0
    case Adventure = 1
    case Country = 2
    case Category = 3
    case Place = 4
}
