import Foundation

// MARK: - Serial Queue: Executes tasks one at a time
let serialQueue = DispatchQueue(label: "com.example.serialQueue")

serialQueue.async {
    print("Serial Task 1 started")
    sleep(1)
    print("Serial Task 1 completed")
}

serialQueue.async {
    print("Serial Task 2 started")
    sleep(1)
    print("Serial Task 2 completed")
}

// MARK: - Concurrent Queue: Executes multiple tasks simultaneously
let concurrentQueue = DispatchQueue(label: "com.example.concurrentQueue", attributes: .concurrent)

concurrentQueue.async {
    print("Concurrent Task A started")
    sleep(2)
    print("Concurrent Task A completed")
}

concurrentQueue.async {
    print("Concurrent Task B started")
    sleep(1)
    print("Concurrent Task B completed")
}

// Keep the program running to observe async operations
RunLoop.main.run()
