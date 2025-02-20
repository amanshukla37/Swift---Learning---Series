import Foundation

// MARK: - Basic Enum
enum CompassDirection {
    case north
    case south
    case east
    case west
}

var direction: CompassDirection = .north
print("Current direction: \(direction)")

// Changing the direction
direction = .west
print("Updated direction: \(direction)")

// MARK: - Enum with Associated Values
enum Media {
    case book(title: String, pages: Int)
    case movie(title: String, duration: Int)
}

let myBook = Media.book(title: "Swift Programming", pages: 350)
let myMovie = Media.movie(title: "Inception", duration: 148)

// Using switch to extract associated values
switch myBook {
case .book(let title, let pages):
    print("Book: \(title), Pages: \(pages)")
case .movie(let title, let duration):
    print("Movie: \(title), Duration: \(duration) mins")
}

// MARK: - Enum with Raw Values
enum StatusCode: Int {
    case success = 200
    case notFound = 404
    case unauthorized = 401
    case forbidden = 403
}

let status: StatusCode = .notFound
print("HTTP Status Code: \(status.rawValue)")

// Initializing from a raw value
if let statusCode = StatusCode(rawValue: 200) {
    print("Valid status: \(statusCode)")
} else {
    print("Invalid status code")
}

// MARK: - Enum with Methods
enum CalculatorOperation {
    case addition(Double, Double)
    case subtraction(Double, Double)
    case multiplication(Double, Double)
    case division(Double, Double)

    func compute() -> Double {
        switch self {
        case .addition(let a, let b):
            return a + b
        case .subtraction(let a, let b):
            return a - b
        case .multiplication(let a, let b):
            return a * b
        case .division(let a, let b):
            return b != 0 ? a / b : 0
        }
    }
}

let operation = CalculatorOperation.multiplication(5, 4)
print("Result of multiplication: \(operation.compute())")

// MARK: - Iterating Over Enum Cases (CaseIterable)
enum DaysOfWeek: String, CaseIterable {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

print("Days of the Week:")
for day in DaysOfWeek.allCases {
    print(day.rawValue.capitalized)
}

/* 
Output Example
Current direction: north
Updated direction: west
Book: Swift Programming, Pages: 350
HTTP Status Code: 404
Valid status: success
Result of multiplication: 20.0
Days of the Week:
Monday
Tuesday
Wednesday
Thursday
Friday
Saturday
Sunday
*/
