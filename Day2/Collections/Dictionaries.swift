import Foundation

// Creating a dictionary
var studentScores: [String: Int] = ["Aman": 95, "John": 88, "Emily": 92]

// Adding new key-value pairs
studentScores["Sara"] = 85

// Updating values
studentScores["John"] = 90

// Removing elements
studentScores.removeValue(forKey: "Emily")

// Iterating over dictionary
for (name, score) in studentScores {
    print("\(name) scored \(score)")
}

// Checking key existence
if let score = studentScores["Aman"] {
    print("Aman’s Score:", score)
}

// Printing final dictionary
print("Final Dictionary:", studentScores)
