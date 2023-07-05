//
// AdventureLightModelBaseInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class AdventureLightModelBaseInfo: Codable, JSONEncodable, Hashable {

    public var title: String?
    public var subTitle: String?
    public var level: AdventureLightModelBaseInfoLevel?
    public var coverPhoto: String?
    public var commentsAllowed: Bool?
    public var isPublished: Bool?
    public var isRecommended: Bool?
    public var freeDownload: Bool
    
    public var startDate: Date
    public var endDate: Date
    public var totalDistance: Double
    public var totalDuration: Double
    public var minAltitude: Double
    public var maxAltitude: Double
    public var totalUpLength: Double
    public var totalDownLength: Double
    public var idleTime: Double
    public var totalUpTime: Double
    public var totalDownTime: Double
    public var minSpeed: Double
    public var maxSpeed: Double
    public var avgSpeed: Double
    public var caloriesBurned: Double
    public var snickersBurned: Double
    public var maxSlope: Double
    public var minSlope: Double

    public init(
        title: String? = nil,
        subTitle: String? = nil,
        level: AdventureLightModelBaseInfoLevel? = nil,
        coverPhoto: String? = nil,
        commentsAllowed: Bool? = nil,
        isPublished: Bool? = nil,
        isRecommended: Bool? = nil,
        freeDownload: Bool,
        startDate: Date,
        endDate: Date,
        totalDistance: Double,
        totalDuration: Double,
        minAltitude: Double,
        maxAltitude: Double,
        totalUpLength: Double,
        totalDownLength: Double,
        idleTime: Double,
        totalUpTime: Double,
        totalDownTime: Double,
        minSpeed: Double,
        maxSpeed: Double,
        avgSpeed: Double,
        caloriesBurned: Double,
        snickersBurned: Double,
        maxSlope: Double,
        minSlope: Double
    ) {
        self.title = title
        self.subTitle = subTitle
        self.level = level
        self.coverPhoto = coverPhoto
        self.commentsAllowed = commentsAllowed
        self.isPublished = isPublished
        self.isRecommended = isRecommended
        self.freeDownload = freeDownload
        
        self.startDate = startDate
        self.endDate = endDate
        self.totalDistance = totalDistance
        self.totalDuration = totalDuration
        self.minAltitude = minAltitude
        self.maxAltitude = maxAltitude
        self.totalUpLength = totalUpLength
        self.totalDownLength = totalDownLength
        self.idleTime = idleTime
        self.totalUpTime = totalUpTime
        self.totalDownTime = totalDownTime
        self.minSpeed = minSpeed
        self.maxSpeed = maxSpeed
        self.avgSpeed = avgSpeed
        self.caloriesBurned = caloriesBurned
        self.snickersBurned = snickersBurned
        self.maxSlope = maxSlope
        self.minSlope = minSlope
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case subTitle
        case level
        case coverPhoto
        case commentsAllowed
        case isPublished
        case isRecommended
        case freeDownload
        
        case startDate
        case endDate
        case totalDistance
        case totalDuration
        case minAltitude
        case maxAltitude
        case totalUpLength
        case totalDownLength
        case idleTime
        case totalUpTime
        case totalDownTime
        case minSpeed
        case maxSpeed
        case avgSpeed
        case caloriesBurned
        case snickersBurned
        case maxSlope
        case minSlope
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(subTitle, forKey: .subTitle)
        try container.encodeIfPresent(level, forKey: .level)
        try container.encodeIfPresent(coverPhoto, forKey: .coverPhoto)
        try container.encodeIfPresent(commentsAllowed, forKey: .commentsAllowed)
        try container.encodeIfPresent(isPublished, forKey: .isPublished)
        try container.encodeIfPresent(isRecommended, forKey: .isRecommended)
        try container.encodeIfPresent(freeDownload, forKey: .freeDownload)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(endDate, forKey: .endDate)
        try container.encodeIfPresent(totalDistance, forKey: .totalDistance)
        try container.encodeIfPresent(totalDuration, forKey: .totalDuration)
        try container.encodeIfPresent(minAltitude, forKey: .minAltitude)
        try container.encodeIfPresent(maxAltitude, forKey: .maxAltitude)
        try container.encodeIfPresent(totalUpLength, forKey: .totalUpLength)
        try container.encodeIfPresent(totalDownLength, forKey: .totalDownLength)
        try container.encodeIfPresent(idleTime, forKey: .idleTime)
        try container.encodeIfPresent(totalUpTime, forKey: .totalUpTime)
        try container.encodeIfPresent(totalDownTime, forKey: .totalDownTime)
        try container.encodeIfPresent(minSpeed, forKey: .minSpeed)
        try container.encodeIfPresent(maxSpeed, forKey: .maxSpeed)
        try container.encodeIfPresent(avgSpeed, forKey: .avgSpeed)
        try container.encodeIfPresent(caloriesBurned, forKey: .caloriesBurned)
        try container.encodeIfPresent(snickersBurned, forKey: .snickersBurned)
        try container.encodeIfPresent(maxSlope, forKey: .maxSlope)
        try container.encodeIfPresent(minSlope, forKey: .minSlope)
    }

    public static func == (lhs: AdventureLightModelBaseInfo, rhs: AdventureLightModelBaseInfo) -> Bool {
        lhs.title == rhs.title &&
        lhs.subTitle == rhs.subTitle &&
        lhs.level == rhs.level &&
        lhs.coverPhoto == rhs.coverPhoto &&
        lhs.commentsAllowed == rhs.commentsAllowed &&
        lhs.isPublished == rhs.isPublished &&
        lhs.isRecommended == rhs.isRecommended &&
        lhs.freeDownload == rhs.freeDownload &&
        lhs.startDate == rhs.startDate &&
        lhs.endDate == rhs.endDate &&
        lhs.totalDistance == rhs.totalDistance &&
        lhs.totalDuration == rhs.totalDuration &&
        lhs.minAltitude == rhs.minAltitude &&
        lhs.maxAltitude == rhs.maxAltitude &&
        lhs.totalUpLength == rhs.totalUpLength &&
        lhs.totalDownLength == rhs.totalDownLength &&
        lhs.idleTime == rhs.idleTime &&
        lhs.totalUpTime == rhs.totalUpTime &&
        lhs.totalDownTime == rhs.totalDownTime &&
        lhs.minSpeed == rhs.minSpeed &&
        lhs.maxSpeed == rhs.maxSpeed &&
        lhs.avgSpeed == rhs.avgSpeed &&
        lhs.caloriesBurned == rhs.caloriesBurned &&
        lhs.snickersBurned == rhs.snickersBurned &&
        lhs.maxSlope == rhs.maxSlope &&
        lhs.minSlope == rhs.minSlope
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(title?.hashValue)
        hasher.combine(subTitle?.hashValue)
        hasher.combine(level?.hashValue)
        hasher.combine(coverPhoto?.hashValue)
        hasher.combine(commentsAllowed?.hashValue)
        hasher.combine(isPublished?.hashValue)
        hasher.combine(isRecommended?.hashValue)
        hasher.combine(freeDownload.hashValue)
        hasher.combine(startDate.hashValue)
        hasher.combine(endDate.hashValue)
        hasher.combine(totalDistance.hashValue)
        hasher.combine(totalDuration.hashValue)
        hasher.combine(minAltitude.hashValue)
        hasher.combine(maxAltitude.hashValue)
        hasher.combine(totalUpLength.hashValue)
        hasher.combine(totalDownLength.hashValue)
        hasher.combine(idleTime.hashValue)
        hasher.combine(totalUpTime.hashValue)
        hasher.combine(totalDownTime.hashValue)
        hasher.combine(minSpeed.hashValue)
        hasher.combine(maxSpeed.hashValue)
        hasher.combine(avgSpeed.hashValue)
        hasher.combine(caloriesBurned.hashValue)
        hasher.combine(snickersBurned.hashValue)
        hasher.combine(maxSlope.hashValue)
        hasher.combine(minSlope.hashValue)
        
    }
}

