// Swift Closures

// Higher Order Functions

func printString(aString: String) {
    println("Print this string: \(aString)")
}

printString("Hi, I am Kris")

// Assign the function to a constant

let someFunction = printString


// Here I call the function printString, by using the constant someFunction
someFunction("Hi, look at me")


func printInt(number: Int) {
    println("print number: \(number)")
}

let numberOfApples = 3

// We can pass arguments to a function that are a variable or constant
printInt(numberOfApples)

// Note, you need to have a Void return if you are going to use a function as a parameter
func displayString(printStringFunc: (String) -> Void ) {
    printStringFunc("I am a function in a function")
}

displayString(printString)

// Filter function

let allNumbers = [1,2,3,4,5,6,7,8,9,10]

func isEvenNumber (i: Int) -> Bool {
    return i % 2 == 0
}

let ifEven = isEvenNumber

let evenNumbers = allNumbers.filter(ifEven)


// Capturing Variables

// Returning functions

// -> () specifies return of void

func printerFunction() -> (Int) -> () {
    func printInteger(number: Int) {
        println("The integer passed in is \(number)")
    }
    return printInteger
}

let printAndReturnIntegerFunc = printerFunction()

// Scope allows us to pass in an argument for a function that is returned by another function
// The constants will store local variables within the functions in local memory
printAndReturnIntegerFunc(2)

