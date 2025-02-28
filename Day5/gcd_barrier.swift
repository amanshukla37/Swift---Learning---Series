import Foundation

let barrierQueue = DispatchQueue(label: "com.example.barrierQueue", attributes: .concurrent)

barrierQueue.async {
    print("Reading Data 1")
}

barrierQueue.async {
    print("Reading Data 2")
}

// Barrier - Ensures exclusive access for writing
barrierQueue.async(flags: .barrier) {
    print("Writing Data (Thread-Safe)")
}

barrierQueue.async {
    print("Reading Data 3")
}

// Keep the program running to observe async operations
RunLoop.main.run()
