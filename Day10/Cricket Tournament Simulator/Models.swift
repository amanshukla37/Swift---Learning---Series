import Foundation

// MARK: - Structs

// Represents a team in the tournament
struct Team {
    let name: String
    let players: [String]
}

// Represents the result of a match
struct MatchResult {
    let matchNumber: Int
    let team1: String
    let team2: String
    let winner: String
}
