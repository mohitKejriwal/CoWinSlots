//
//  Objects.swift
//  COWIN
//
//  Created by Anush on 01/05/21.
//

import Foundation


// MARK: - Welcome
struct CowinData: Codable {
    var centers: [Center]?
}

// MARK: - Center
struct Center: Codable {
    let centerID: Int?
    let name, stateName, districtName, blockName: String?
    let pincode, lat, long: Int?
    let from, to, feeType: String?
    var sessions: [Session]?

    enum CodingKeys: String, CodingKey {
        case centerID = "center_id"
        case name
        case stateName = "state_name"
        case districtName = "district_name"
        case blockName = "block_name"
        case pincode, lat, long, from, to
        case feeType = "fee_type"
        case sessions
    }
}

// MARK: - Session
struct Session: Codable {
    let sessionID, date: String?
    let availableCapacity, minAgeLimit: Int?
    let vaccine: String?
    let slots: [String]?

    enum CodingKeys: String, CodingKey {
        case sessionID = "session_id"
        case date
        case availableCapacity = "available_capacity"
        case minAgeLimit = "min_age_limit"
        case vaccine, slots
    }
}
