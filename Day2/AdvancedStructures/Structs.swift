import Foundation

// Defining a struct
struct Person {
    var name: String
    var age: Int

    // Method inside struct
    func greet() -> String {
        return "Hello, my name is \(name) and I am \(age) years old."
    }
}

// Creating an instance
let person1 = Person(name: "Rohan", age: 28)

// Calling method
print(person1.greet())
