import Foundation

class Calculator {
    func add(a: Int, b: Int) -> Int {
        return a + b
    }

    func multiply(a: Int, b: Int) -> Int {
        return a * b
    }
}

// Creating an instance
let calc = Calculator()
print("Addition:", calc.add(a: 5, b: 3))  // Output: 8
print("Multiplication:", calc.multiply(a: 5, b: 3))  // Output: 15
