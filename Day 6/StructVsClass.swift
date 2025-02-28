/*
Structs copy values.
Classes share references.
*/

struct CarStruct {
    var model: String
}

class CarClass {
    var model: String
    
    init(model: String) {
        self.model = model
    }
}

// Value Type (Struct)
var car1 = CarStruct(model: "Tesla")
var car2 = car1  // Copies the value
car2.model = "BMW"

print(car1.model)  // Tesla (original unchanged)
print(car2.model)  // BMW (copy modified)

// Reference Type (Class)
var car3 = CarClass(model: "Tesla")
var car4 = car3  // References the same object
car4.model = "BMW"

print(car3.model)  // BMW (original changed)
print(car4.model)  // BMW (same reference)
