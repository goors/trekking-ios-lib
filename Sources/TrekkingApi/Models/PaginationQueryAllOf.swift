//
// PaginationQueryAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class PaginationQueryAllOf: Codable, JSONEncodable, Hashable {

    static let pageRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 2147483647, exclusiveMaximum: false, multipleOf: nil)
    static let pageSizeRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 2147483647, exclusiveMaximum: false, multipleOf: nil)
    static let maxItemCountRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: 2147483647, exclusiveMaximum: false, multipleOf: nil)
    public var page: Int?
    public var pageSize: Int?
    public var maxItemCount: Int?

    public init(page: Int? = nil, pageSize: Int? = nil, maxItemCount: Int? = nil) {
        self.page = page
        self.pageSize = pageSize
        self.maxItemCount = maxItemCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case page
        case pageSize
        case maxItemCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(page, forKey: .page)
        try container.encodeIfPresent(pageSize, forKey: .pageSize)
        try container.encodeIfPresent(maxItemCount, forKey: .maxItemCount)
    }

    public static func == (lhs: PaginationQueryAllOf, rhs: PaginationQueryAllOf) -> Bool {
        lhs.page == rhs.page &&
        lhs.pageSize == rhs.pageSize &&
        lhs.maxItemCount == rhs.maxItemCount
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(page?.hashValue)
        hasher.combine(pageSize?.hashValue)
        hasher.combine(maxItemCount?.hashValue)
        
    }
}

