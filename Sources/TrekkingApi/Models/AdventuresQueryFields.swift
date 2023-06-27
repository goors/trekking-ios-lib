//
// AdventuresQueryFields.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public enum AdventuresQueryFields: Int, Codable {
    case BaseInfo = 0
    case GeoInfo = 1
    case UserInfo = 2
    case CategoryInfo = 3
    case MediaInfo = 4
    case All = -1
}

enum AdventuresQueryFieldsBitwise: Int {
    case BaseInfo, GeoInfo, UserInfo, CategoryInfo, MediaInfo, All = -1
    func bitmask() -> UInt32 {
        return 1 << self.rawValue
      }
  }