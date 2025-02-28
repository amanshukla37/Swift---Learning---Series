import Foundation

class Person {
    let name: String
    
    init(name: String) {
        self.name = name
        print("\(name) is initialized")
    }
    
    deinit {
        print("\(name) is deallocated")
    }
}

var person1: Person? = Person(name: "Aman")
person1 = nil  // Reference count reaches 0, object deallocated
