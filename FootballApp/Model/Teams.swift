//
//  GermanyTeams.swift
//  FootballApp
//
//  Created by juris.katkovskis on 10/09/2022.
//




// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let germanyTeams = try? newJSONDecoder().decode(GermanyTeams.self, from: jsonData)

import Foundation

// MARK: - Teams
struct Teams: Codable {
    var query: Query?
    var data: [Datum]?
}

// MARK: - Datum
struct Datum: Codable {
    var teamID: Int?
    var name, shortCode: String?
    var commonName: String?
    var logo: String?
    var country: Country?
    var playerID: Int?
        var firstname, lastname: String?
        var birthday: String?
        var age, weight, height: Int?

    enum CodingKeys: String, CodingKey {
        case teamID = "team_id"
        case name
        case shortCode = "short_code"
        case commonName = "common_name"
        case logo, country
        case playerID = "player_id"
        case firstname, lastname, birthday, age, weight, height
    }
}

// MARK: - Country
struct Country: Codable {
    var countryID: Int?
    var name: Name?
    var countryCode: CountryCode?
    var continent: Continent?

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
    case en = "en" //added
}

enum Name: String, Codable {
    case germany = "Germany"
    case england = "England"
}

// MARK: - Query
struct Query: Codable {
    var apikey, countryID: String?

    enum CodingKeys: String, CodingKey {
        case apikey
        case countryID = "country_id"
    }
}
