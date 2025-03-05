protocol Container {
    associatedtype Item
    var items: [Item] { get set }
    mutating func addItem(_ item: Item)
}

struct Stack: Container {
    var items = [Int]()
    
    mutating func addItem(_ item: Int) {
        items.append(item)
    }
}

var stack = Stack()
stack.addItem(42)
