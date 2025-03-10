import Foundation

// MARK: - Class for Tournament Setup

class CricketTournament: TournamentSetup {
    var hostCountry: String = ""
    var stadiums: [String] = []
    var userTeam: Team?

    let hostCountries = [
        "India": ["Wankhede", "Eden Gardens", "Feroz Shah Kotla", "Chinnaswamy", "Mohali"],
        "Australia": ["MCG", "SCG", "Gabba", "Adelaide Oval", "Optus Stadium"],
        "England": ["Lords", "Oval", "Old Trafford", "Edgbaston", "Headingley"],
        "South Africa": ["Newlands", "Wanderers", "Centurion", "Kingsmead", "St George’s Park"],
        "Pakistan": ["Gaddafi Stadium", "National Stadium", "Rawalpindi", "Multan Cricket Stadium", "Arbab Niaz Stadium"]
    ]

    let teams = [
        Team(name: "India", players: ["Rohit Sharma", "Virat Kohli", "KL Rahul", "Shreyas Iyer", "Hardik Pandya", "Ravindra Jadeja", "Jasprit Bumrah", "Mohammed Shami", "Kuldeep Yadav", "Bhuvneshwar Kumar", "Rishabh Pant"]),
        Team(name: "Australia", players: ["David Warner", "Steve Smith", "Marnus Labuschagne", "Travis Head", "Glenn Maxwell", "Mitchell Marsh", "Pat Cummins", "Josh Hazlewood", "Nathan Lyon", "Adam Zampa", "Alex Carey"]),
        Team(name: "England", players: ["Joe Root", "Ben Stokes", "Jonny Bairstow", "Jos Buttler", "Jason Roy", "Liam Livingstone", "Chris Woakes", "Jofra Archer", "Mark Wood", "Moeen Ali", "Sam Curran"]),
        Team(name: "South Africa", players: ["Temba Bavuma", "Quinton de Kock", "Aiden Markram", "David Miller", "Rassie van der Dussen", "Heinrich Klaasen", "Kagiso Rabada", "Anrich Nortje", "Lungi Ngidi", "Tabraiz Shamsi", "Wayne Parnell"]),
        Team(name: "New Zealand", players: ["Kane Williamson", "Devon Conway", "Tom Latham", "Daryl Mitchell", "Glenn Phillips", "James Neesham", "Trent Boult", "Tim Southee", "Lockie Ferguson", "Mitchell Santner", "Finn Allen"]),
        Team(name: "Pakistan", players: ["Babar Azam", "Mohammad Rizwan", "Fakhar Zaman", "Shadab Khan", "Imam-ul-Haq", "Shaheen Afridi", "Haris Rauf", "Hasan Ali", "Mohammad Nawaz", "Sarfaraz Ahmed", "Naseem Shah"])
    ]

    func selectHostCountry() {
        print("🌍 Select a Host Country for the Tournament:")
        let hostList = Array(hostCountries.keys)
        for (index, country) in hostList.enumerated() {
            print("\(index + 1). \(country)")
        }

        guard let choice = readLine(), let index = Int(choice), index >= 1, index <= hostList.count else {
            print("❌ Invalid selection. Exiting...")
            exit(0)
        }

        hostCountry = hostList[index - 1]
        stadiums = hostCountries[hostCountry] ?? []
        print("\n🏆 Tournament will be hosted in \(hostCountry) at:")
        print("✨ \(stadiums.joined(separator: ", ")) ✨")
    }

    func selectTeam() {
        print("\n🏏 Select Your Team from the List:")
        for (index, team) in teams.enumerated() {
            print("\(index + 1). \(team.name)")
        }

        guard let choice = readLine(), let index = Int(choice), index >= 1, index <= teams.count else {
            print("❌ Invalid selection. Exiting...")
            exit(0)
        }

        userTeam = teams[index - 1]
        print("\n🔥 You Selected: \(userTeam!.name) 🔥")
        print("👥 Team Players: \(userTeam!.players.joined(separator: ", "))")
    }
}
