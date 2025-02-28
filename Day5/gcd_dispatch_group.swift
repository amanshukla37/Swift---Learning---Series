import Foundation

let group = DispatchGroup()

group.enter()
DispatchQueue.global().async {
    print("Group Task 1 started")
    sleep(2)
    print("Group Task 1 completed")
    group.leave()
}

group.enter()
DispatchQueue.global().async {
    print("Group Task 2 started")
    sleep(1)
    print("Group Task 2 completed")
    group.leave()
}

group.notify(queue: DispatchQueue.main) {
    print("All Group Tasks Completed")
}

// Keep the program running to observe async operations
RunLoop.main.run()
