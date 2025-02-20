import Foundation

// Defining a class
class Car {
    var brand: String
    var speed: Int

    init(brand: String, speed: Int) {
        self.brand = brand
        self.speed = speed
    }

    func accelerate() {
        speed += 10
        print("\(brand) is now running at \(speed) km/h")
    }
}

// Creating an instance
let myCar = Car(brand: "Tesla", speed: 50)
myCar.accelerate()
