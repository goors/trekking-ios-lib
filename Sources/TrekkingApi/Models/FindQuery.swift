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
    public var lang: AdventureLanguageEnum
    public var maxItemCount: Int

    public init(text: String, suggestionType: SearchSuggestionType, lang: AdventureLanguageEnum, maxItemCount: Int = 6) {
        self.text = text
        self.suggestionType = suggestionType
        self.maxItemCount = maxItemCount
        self.lang = lang
        
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case text
        case suggestionType
        case maxItemCount
        case lang
        
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(suggestionType, forKey: .suggestionType)
        try container.encodeIfPresent(maxItemCount, forKey: .maxItemCount)
        try container.encodeIfPresent(lang, forKey: .lang)
        
    }

    public static func == (lhs: FindQuery, rhs: FindQuery) -> Bool {
        lhs.text == rhs.text &&
        lhs.suggestionType == rhs.suggestionType &&
        lhs.lang == rhs.lang &&
        lhs.maxItemCount == rhs.maxItemCount
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(text.hashValue)
        hasher.combine(suggestionType.hashValue)
        hasher.combine(maxItemCount.hashValue)
        hasher.combine(lang.hashValue)
        
        
    }
}