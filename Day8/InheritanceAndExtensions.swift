/*inheritance*/

protocol Drivable {
    func drive()
}

protocol Flyable: Drivable {
    func fly()
}

struct FlyingCar: Flyable {
    func drive() {
        print("Driving")
    }
    
    func fly() {
        print("Flying")
    }
}

let flyingCar = FlyingCar()
flyingCar.drive() // Driving
flyingCar.fly() // Flying


/*extension*/
protocol Identifiable {
    var id: String { get }
}

extension Identifiable {
    func printId() {
        print("The ID is \(id)")
    }
}

struct User: Identifiable {
    var id: String
}

let user = User(id: "123")
user.printId() // "The ID is 123"

