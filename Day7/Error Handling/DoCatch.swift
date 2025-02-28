import Foundation

enum FileError: Error {
    case fileNotFound
    case insufficientPermissions
}

func readFile(filename: String) throws {
    if filename.isEmpty {
        throw FileError.fileNotFound
    }
    print("Reading file: \(filename)")
}

do {
    try readFile(filename: "")
} catch FileError.fileNotFound {
    print("Error: File not found.")
} catch {
    print("Error: \(error)")
}
