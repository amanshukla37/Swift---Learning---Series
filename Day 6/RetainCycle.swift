import Foundation

class Person {
    var name: String
    var laptop: Laptop?  // Strong reference
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) is deallocated")
    }
}

class Laptop {
    var model: String
    var owner: Person?  // Strong reference (retain cycle)
    
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

aman = nil
macbook = nil  // Retain cycle prevents deallocation
