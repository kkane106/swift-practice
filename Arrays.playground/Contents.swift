// Long syntax (don't use)

let longArray = Array<String>(arrayLiteral: "Kris", "Luke", "Handy")
longArray.count
longArray.isEmpty
// this breaks because the array was declared as a constant
//longArray.append("Thomas")


// Short syntax (use this)

var shortArray = ["Kris", "Luke", "Handy"]
/* 
var shortArray: [String] = ["Kris", "Luke", "Handy"]
compiler infers the above, no need to state it for an array with values
*/

// Count
shortArray.count

// Determine emptiness
shortArray.isEmpty

// Append
shortArray.append("Thomas")

// Long syntax for for loop
for i in 0..<shortArray.count {
    println(shortArray[i])
}

// for loop goodness, extract individual element shorthand (loop over the actual elements, not the number of indices)
for i in shortArray {
    println(i)
}

// Remove the last item
var lastValue = shortArray.removeLast()
lastValue
shortArray
shortArray += ["Kate", "Arthur", "Dan"]

// Remove a specific element
var removedValue = shortArray.removeAtIndex(2)
removedValue
shortArray

// Add an element at a specific index
shortArray.insert("Banana", atIndex: 2)

// How to declare an empty Array
var emptyArray = [String]()


// Subscript syntax
shortArray
shortArray[0] = "Aaron"
shortArray
shortArray[2]

// Literal Syntax
let myName = "Arthur"
let myAge = 29
println("my name is \(myName)")
println("my name is \(myAge)")

// Collection literals
// Array literal --> [ ]

// Map! Filter! Reduce!
// weheartswift.com/higher-order-functions-map-filter-reduce-and-more/

