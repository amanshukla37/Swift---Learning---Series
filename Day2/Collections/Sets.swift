import Foundation

// MARK: - Creating a Set
var numbers: Set<Int> = [1, 2, 3, 4, 5]
print("Initial Set: \(numbers)")

// MARK: - Adding Elements
numbers.insert(6)
print("After inserting 6: \(numbers)")

// MARK: - Removing Elements
if let removedElement = numbers.remove(3) {
    print("Removed \(removedElement) from set")
} else {
    print("Element not found")
}
print("After removing 3: \(numbers)")

// MARK: - Checking Existence
if numbers.contains(4) {
    print("Set contains 4")
} else {
    print("Set does not contain 4")
}

// MARK: - Set Operations

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 1️⃣ Union (All unique elements from both sets)
let unionSet = setA.union(setB)
print("Union of setA and setB: \(unionSet)")

// 2️⃣ Intersection (Common elements in both sets)
let intersectionSet = setA.intersection(setB)
print("Intersection of setA and setB: \(intersectionSet)")

// 3️⃣ Subtracting (Elements in setA but not in setB)
let differenceSet = setA.subtracting(setB)
print("Difference of setA and setB: \(differenceSet)")

// 4️⃣ Symmetric Difference (Elements in either set, but not both)
let symmetricDifferenceSet = setA.symmetricDifference(setB)
print("Symmetric Difference of setA and setB: \(symmetricDifferenceSet)")

// MARK: - Subset and Superset
let smallSet: Set<Int> = [1, 2]
print("Is smallSet a subset of setA? \(smallSet.isSubset(of: setA))")
print("Is setA a superset of smallSet? \(setA.isSuperset(of: smallSet))")

// MARK: - Iterating Through a Set
print("Iterating through numbers:")
for num in numbers {
    print(num, terminator: " ")
}
print("\n")

// MARK: - Sorting a Set (Converted to Array)
let sortedNumbers = numbers.sorted()
print("Sorted Set: \(sortedNumbers)")


/* Output Example
   Initial Set: [2, 4, 1, 5, 3]
   After inserting 6: [2, 4, 1, 5, 3, 6]
   Removed 3 from set
   After removing 3: [2, 4, 1, 5, 6]
  Set contains 4
  Union of setA and setB: [1, 2, 3, 4, 5, 6, 7]
  Intersection of setA and setB: [3, 4, 5]
  Difference of setA and setB: [1, 2]
  Symmetric Difference of setA and setB: [1, 2, 6, 7]
  Is smallSet a subset of setA? true
  Is setA a superset of smallSet? true
  Iterating through numbers:
  2 4 1 5 6 
  Sorted Set: [1, 2, 4, 5, 6]

*/
