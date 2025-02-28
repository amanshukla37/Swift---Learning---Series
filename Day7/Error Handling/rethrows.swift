func performOperation(_ operation: () throws -> Void) rethrows {
    print("Starting operation...")
    try operation()  // Executes the closure
    print("Operation completed!")
}

// A closure that **does not** throw
try? performOperation {
    print("This is a safe operation.")
}

// A closure that **throws** an error
enum MyError: Error {
    case somethingWentWrong
}

do {
    try performOperation {
        print("About to throw an error...")
        throw MyError.somethingWentWrong
    }
} catch {
    print("Caught an error:", error)
}


/* Output
Starting operation...
This is a safe operation.
Operation completed!

Starting operation...
About to throw an error...
Caught an error: somethingWentWrong
*/
