import Foundation

// MARK: - Protocols

// Protocol for tournament setup tasks
protocol TournamentSetup {
    func selectHostCountry()
    func selectTeam()
}

// Protocol for match organizing tasks
protocol MatchOrganizer {
    func startTournament()
    func playSemiFinals()
    func playFinal(finalists: [String])
}
