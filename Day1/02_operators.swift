// 02_operators.swift
// Swift Operators - Arithmetic, Assignment, Comparison, Logical, Bitwise

import Foundation

// MARK: - 1️⃣ Arithmetic Operators
let a = 10
let b = 3

print("Addition: \(a + b)")       // 13
print("Subtraction: \(a - b)")    // 7
print("Multiplication: \(a * b)") // 30
print("Division: \(a / b)")       // 3 (Integer Division)
print("Modulus: \(a % b)")        // 1 (Remainder)

// MARK: - 2️⃣ Assignment Operators
var x = 5
x += 3  // Equivalent to: x = x + 3
print("x after += 3: \(x)") // 8

x *= 2  // x = x * 2
print("x after *= 2: \(x)") // 16

// MARK: - 3️⃣ Comparison Operators
let p = 10, q = 20
print("p == q: \(p == q)") // false
print("p != q: \(p != q)") // true
print("p > q: \(p > q)")   // false
print("p < q: \(p < q)")   // true

// MARK: - 4️⃣ Logical Operators
let isSwiftFun = true
let isDifficult = false

print("AND (&&): \(isSwiftFun && isDifficult)")  // false
print("OR (||): \(isSwiftFun || isDifficult)")   // true
print("NOT (!): \(!isSwiftFun)")                 // false

// MARK: - 5️⃣ Bitwise Operators
let num1 = 6  // 110 in binary
let num2 = 3  // 011 in binary

print("Bitwise AND (&): \(num1 & num2)")  // 2 (010)
print("Bitwise OR (|): \(num1 | num2)")   // 7 (111)
print("Bitwise XOR (^): \(num1 ^ num2)")  // 5 (101)
print("Bitwise Left Shift (<<): \(num1 << 1)")  // 12 (1100)
print("Bitwise Right Shift (>>): \(num1 >> 1)") // 3 (011)
