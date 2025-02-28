import Foundation

func divide(_ a: Int, by b: Int) throws -> Int {
    if b == 0 {
        throw NSError(domain: "MathError", code: 1, userInfo: nil)
    }
    return a / b
}

do {
    let result = try divide(10, by: 2)
    print("Result: \(result)")
} catch {
    print("Error: \(error.localizedDescription)")
}
