// AssociatedTypesWithGenerics.swift

// Protocol with an associated type
protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    func getItem(at index: Int) -> Item?
}

// A concrete type that conforms to the Container protocol
struct IntContainer: Container {
    var items: [Int] = []
    
    // Conforms to protocol's associated type
    mutating func append(_ item: Int) {
        items.append(item)
    }
    
    func getItem(at index: Int) -> Int? {
        return items.indices.contains(index) ? items[index] : nil
    }
}

// A concrete type that conforms to the Container protocol with String type
struct StringContainer: Container {
    var items: [String] = []
    
    mutating func append(_ item: String) {
        items.append(item)
    }
    
    func getItem(at index: Int) -> String? {
        return items.indices.contains(index) ? items[index] : nil
    }
}

// Example usage:
var intContainer = IntContainer()
intContainer.append(1)
intContainer.append(2)
intContainer.append(3)

print(intContainer.getItem(at: 0)!)  // Output: 1
print(intContainer.getItem(at: 2)!)  // Output: 3

var stringContainer = StringContainer()
stringContainer.append("Hello")
stringContainer.append("World")
print(stringContainer.getItem(at: 0)!)  // Output: Hello
print(stringContainer.getItem(at: 1)!)  // Output: World
