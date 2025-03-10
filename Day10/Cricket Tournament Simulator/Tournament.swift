import Foundation

// MARK: - Tournament Execution

class Tournament: MatchOrganizer {
    var tournamentSetup = CricketTournament()
    var standings: [String: Int] = [:]
    var matchResults: [MatchResult] = []

    let group = DispatchGroup()

    init() {
        for team in tournamentSetup.teams { standings[team.name] = 0 }
    }

    func playMatch(matchNumber: Int, team1: Team, team2: Team, ground: String, completion: @escaping (Team) -> Void) {
        group.enter()

        DispatchQueue.global().async {
            DispatchQueue.main.sync {
                print("\n⚡ Match \(matchNumber) at \(ground): \(team1.name) vs \(team2.name)")
                print("🎲 Toss Won by \(Bool.random() ? team1.name : team2.name)")
            }

            sleep(UInt32(Int.random(in: 1...2)))

            let winner = Bool.random() ? team1 : team2
            DispatchQueue.main.sync {
                self.standings[winner.name]! += 2
                self.matchResults.append(MatchResult(matchNumber: matchNumber, team1: team1.name, team2: team2.name, winner: winner.name))
                print("✅ Match \(matchNumber) Completed! Winner: \(winner.name)")
            }
            completion(winner)
            self.group.leave()
        }
    }

    func showPointsTable() {
        print("\n📊 *Points Table:*")
        let sortedStandings = standings.sorted { $0.value > $1.value }
        for (team, points) in sortedStandings {
            print("\(team): \(points) Points")
        }
    }

    func startTournament() {
        tournamentSetup.selectHostCountry()
        tournamentSetup.selectTeam()
        print("\n🏆 Starting Cricket Tournament 🏆\n")

        var matchNumber = 1
        for i in 0..<tournamentSetup.teams.count {
            for j in (i + 1)..<tournamentSetup.teams.count {
                let ground = tournamentSetup.stadiums[matchNumber % tournamentSetup.stadiums.count]
                playMatch(matchNumber: matchNumber, team1: tournamentSetup.teams[i], team2: tournamentSetup.teams[j], ground: ground) { _ in }
                matchNumber += 1
            }
        }

        group.notify(queue: DispatchQueue.main) {
            self.showPointsTable()  // Show points table before semi-finals
            self.playSemiFinals()
        }
    }

    func playSemiFinals() {
        let semiFinalists = standings.sorted { $0.value > $1.value }.prefix(4).map { $0.key }
        print("\n🏆 Semi-Finalists: \(semiFinalists.joined(separator: ", "))")

        // First Semi-Final: 1st vs 4th
        playMatch(matchNumber: 16, team1: tournamentSetup.teams.first(where: { $0.name == semiFinalists[0] })!,
                  team2: tournamentSetup.teams.first(where: { $0.name == semiFinalists[3] })!,
                  ground: tournamentSetup.stadiums[0]) { [self] winner in
            // Second Semi-Final: 2nd vs 3rd
            self.playMatch(matchNumber: 17, team1: tournamentSetup.teams.first(where: { $0.name == semiFinalists[1] })!,
                           team2: tournamentSetup.teams.first(where: { $0.name == semiFinalists[2] })!,
                           ground: tournamentSetup.stadiums[1]) { [self] secondWinner in
                // Final match
                self.playFinal(finalists: [winner.name, secondWinner.name])
            }
        }
    }

    func playFinal(finalists: [String]) {
        print("\n🏆 Grand Final 🏆")
        playMatch(matchNumber: 18, team1: tournamentSetup.teams.first(where: { $0.name == finalists[0] })!,
                  team2: tournamentSetup.teams.first(where: { $0.name == finalists[1] })!,
                  ground: tournamentSetup.stadiums[2]) { winner in
            print("\n🎉 Champion of the Tournament: \(winner.name) 🎉")
        }
    }
}
