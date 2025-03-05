// Generic function to swap two values of any type
func swapValues<T>(a: inout T, b: inout T) {
    let temp = a
    a = b
    b = temp
}

// Example usage:
var x = 5
var y = 10
swapValues(a: &x, b: &y)
print("x: \(x), y: \(y)")  // Output: x: 10, y: 5

var str1 = "Hello"
var str2 = "World"
swapValues(a: &str1, b: &str2)
print("str1: \(str1), str2: \(str2)")  // Output: str1: World, str2: Hello
