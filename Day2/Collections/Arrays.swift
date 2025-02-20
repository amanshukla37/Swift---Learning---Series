import Foundation

// Creating an array
var numbers: [Int] = [10, 20, 30, 40, 50]

// Adding elements
numbers.append(60)
numbers.insert(15, at: 1)//[10, 15, 20, 30, 40, 50, 60]

// Removing elements
numbers.remove(at: 2)//[10, 15, 30, 40, 50, 60]
numbers.removeLast()//[10, 15, 30, 40, 50]

// Iterating over an array
for num in numbers {
    print(num)
}

// Sorting array
let sortedNumbers = numbers.sorted()

// Checking element existence
if numbers.contains(20) {
    print("20 exists in the array")
}

// Printing final array
print("Final Array:", numbers)
