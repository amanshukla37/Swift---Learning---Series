// 04_functions.swift
// Swift Functions - Basics, Parameters, Return Values, Overloading

import Foundation

// MARK: - 1️⃣ Basic Function (No Parameters, No Return Value)
func sayHello() {
    print("Hello, Swift!")
}
sayHello()


// MARK: - 2️⃣ Function with Parameters
func greet(name: String) {
    print("Hello, \(name)!")
}
greet(name: "Aman")


// MARK: - 3️⃣ Function with Return Value
func addNumbers(a: Int, b: Int) -> Int {
    return a + b
}
let sum = addNumbers(a: 10, b: 5)
print("Sum: \(sum)")


// MARK: - 4️⃣ Function with Multiple Return Values (Tuple)
func getUserInfo() -> (name: String, age: Int) {
    return ("Aman", 22)
}
let user = getUserInfo()
print("Name: \(user.name), Age: \(user.age)")


// MARK: - 5️⃣ Function with Default Parameter Values
func power(base: Int, exponent: Int = 2) -> Int {
    return Int(pow(Double(base), Double(exponent)))
}
print("2^3: \(power(base: 2, exponent: 3))")
print("4^2: \(power(base: 4)") // Uses default exponent 2



// MARK: - 6️⃣ Function Overloading (Same Name, Different Parameters)
func multiply(a: Int, b: Int) -> Int {
    return a * b
}
func multiply(a: Double, b: Double) -> Double {
    return a * b
}
print("Multiply Ints: \(multiply(a: 3, b: 4))")
print("Multiply Doubles: \(multiply(a: 2.5, b: 3.5))")
