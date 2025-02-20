import Foundation

// MARK: - Basic Closure Syntax
let greet = { (name: String) -> String in
    return "Hello, \(name)!"
}

print(greet("Aman"))

// MARK: - Closures as Function Parameters
func operateOnNumbers(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

// Passing closure directly
let sum = operateOnNumbers(a: 5, b: 3, operation: { (x, y) in return x + y })
print("Sum: \(sum)")

// MARK: - Trailing Closure Syntax
let product = operateOnNumbers(a: 5, b: 3) { $0 * $1 }
print("Product: \(product)")

// MARK: - Closure Returning a Function
func createMultiplier(multiplier: Int) -> (Int) -> Int {
    return { number in
        return number * multiplier
    }
}

let double = createMultiplier(multiplier: 2)
print("Double of 4: \(double(4))") // Outputs 8

// MARK: - Capturing Values
func makeCounter() -> () -> Int {
    var count = 0
    return {
        count += 1
        return count
    }
}

let counter = makeCounter()
print("Counter: \(counter())") // 1
print("Counter: \(counter())") // 2

// MARK: - Escaping Closures
var completionHandlers: [() -> Void] = []

func performTaskWithCompletion(handler: @escaping () -> Void) {
    completionHandlers.append(handler)
}

// Adding a closure to the array
performTaskWithCompletion {
    print("Task Completed!")
}

// Executing stored closures
for handler in completionHandlers {
    handler()
}

// MARK: - Autoclosures
func printIfTrue(_ condition: @autoclosure () -> Bool) {
    if condition() {
        print("Condition is true!")
    }
}

let x = 10
printIfTrue(x > 5) // Uses autoclosure


/* Output Example
  Hello, Aman!
Sum: 8
Product: 15
Double of 4: 8
Counter: 1
Counter: 2
Task Completed!
Condition is true!
*/
