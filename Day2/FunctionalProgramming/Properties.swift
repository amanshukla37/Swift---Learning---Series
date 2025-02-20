/*1️⃣ Stored Properties*/

struct Car {
    var brand: String     // Stored property
    let year: Int         // Constant stored property
}

var myCar = Car(brand: "Tesla", year: 2023)
print(myCar.brand) // Output: Tesla

myCar.brand = "BMW"  // Modifying a variable stored property
print(myCar.brand) // Output: BMW

/*2️⃣ Computed Properties*/
struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {  // Computed Property
        return width * height
    }
}

let rect = Rectangle(width: 10, height: 5)
print(rect.area) // Output: 50
