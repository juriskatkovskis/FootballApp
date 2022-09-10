//
//  GermanyTeams.swift
//  FootballApp
//
//  Created by juris.katkovskis on 10/09/2022.
//

import Foundation


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let germanyTeams = try? newJSONDecoder().decode(GermanyTeams.self, from: jsonData)

import Foundation

// MARK: - GermanyTeams
struct GermanyTeams: Codable {
    let query: Query?
    let data: [Datum]?
}

// MARK: - Datum
struct Datum: Codable {
    let teamID: Int?
    let name, shortCode: String?
    let commonName: String?
    let logo: String?
    let country: Country?

    enum CodingKeys: String, CodingKey {
        case teamID = "team_id"
        case name
        case shortCode = "short_code"
        case commonName = "common_name"
        case logo, country
    }
}

// MARK: - Country
struct Country: Codable {
    let countryID: Int?
    let name: Name?
    let countryCode: CountryCode?
    let continent: Continent?

    enum CodingKeys: String, CodingKey {
        case countryID = "country_id"
        case name
        case countryCode = "country_code"
        case continent
    }
}

enum Continent: String, Codable {
    case europe = "Europe"
}

enum CountryCode: String, Codable {
    case de = "de"
}

enum Name: String, Codable {
    case germany = "Germany"
}

// MARK: - Query
struct Query: Codable {
    let apikey, countryID: String?

    enum CodingKeys: String, CodingKey {
        case apikey
        case countryID = "country_id"
    }
}
