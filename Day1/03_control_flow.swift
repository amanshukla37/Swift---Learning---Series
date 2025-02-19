// 03_control_flow.swift
// Swift Control Flow - Conditional Statements and Loops

import Foundation

// MARK: - 1️⃣ Conditional Statements

// If-Else Example
let age = 18
if age >= 18 {
    print("You are eligible to vote.")
} else {
    print("You are not eligible to vote.")
}

// Nested If-Else Example
let marks = 85
if marks >= 90 {
    print("Grade: A+")
} else if marks >= 75 {
    print("Grade: A") // This will execute
} else {
    print("Grade: B")
}

// Switch Case Example
let day = 3
switch day {
case 1:
    print("Monday")
case 2:
    print("Tuesday")
case 3:
    print("Wednesday") // This will execute
default:
    print("Invalid day")
}

// MARK: - 2️⃣ Loops

// For Loop
print("For Loop Example:")
for i in 1...5 {
    print("Iteration \(i)")
}

// For Loop with Stride (Skipping values)
print("For Loop with Stride (Skipping 2):")
for i in stride(from: 1, to: 10, by: 2) {
    print(i)  // 1, 3, 5, 7, 9
}

// While Loop
print("While Loop Example:")
var counter = 3
while counter > 0 {
    print("Counter: \(counter)")
    counter -= 1
}

// Repeat-While Loop (Executes at least once)
print("Repeat-While Loop Example:")
var num = 5
repeat {
    print("Current value: \(num)")
    num -= 1
} while num > 0

// MARK: - 3️⃣ Loop Control Statements

// Using 'break' to exit loop
print("Break Example:")
for i in 1...5 {
    if i == 3 {
        print("Breaking at \(i)")
        break
    }
    print(i)
}

// Using 'continue' to skip an iteration
print("Continue Example:")
for i in 1...5 {
    if i == 3 {
        print("Skipping \(i)")
        continue
    }
    print(i)
}
