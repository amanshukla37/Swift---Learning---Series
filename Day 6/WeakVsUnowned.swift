class Person {
    var name: String
    weak var laptop: Laptop?  // Weak reference breaks retain cycle
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) is deallocated")
    }
}

class Laptop {
    var model: String
    var owner: Person?
    
    init(model: String) {
        self.model = model
    }
    
    deinit {
        print("\(model) is deallocated")
    }
}

var aman: Person? = Person(name: "Aman")
var macbook: Laptop? = Laptop(model: "MacBook Pro")

aman?.laptop = macbook
macbook?.owner = aman

aman = nil  // Now objects are properly deallocated
macbook = nil
