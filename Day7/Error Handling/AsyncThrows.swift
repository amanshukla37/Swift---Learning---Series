import Foundation

enum NetworkError: Error {
    case badURL
    case requestFailed
}

func fetchData(from url: String) async throws -> String {
    guard url == "https://valid.com" else {
        throw NetworkError.badURL
    }
    return "Data received successfully!"
}

Task {
    do {
        let data = try await fetchData(from: "https://invalid.com")
        print(data)
    } catch {
        print("Network Error: \(error)")
    }
}

/* Output
Network Error: badURL
*/
