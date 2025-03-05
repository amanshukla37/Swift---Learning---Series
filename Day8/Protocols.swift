// Protocols.swift

// Define a Drivable protocol
protocol Drivable {
    func startEngine()
}

// Implement the protocol in a Car struct
struct Car: Drivable {
    func startEngine() {
        print("Car engine started!")
    }
}

// Implement the protocol in a Boat struct
struct Boat: Drivable {
    func startEngine() {
        print("Boat engine started!")
    }
}
