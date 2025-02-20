import Foundation

// Parent class
class Vehicle {
    var speed: Int = 0

    func description() -> String {
        return "Speed: \(speed) km/h"
    }
}

// Child class inheriting from Vehicle
class Car: Vehicle {
    var brand: String = "Tesla"
}

// Creating an instance
let myCar = Car()
myCar.speed = 120
print(myCar.description())  // Output: Speed: 120 km/h
