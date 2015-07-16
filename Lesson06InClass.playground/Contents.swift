// this allows me to use objective C in my Swift code
import Foundation

//Encapsulation

func unlockApp(serialKey: String) -> Bool {
    let containsProperLength = properLength(serialKey)
    let containsSpecificValues = specificValues(serialKey)

    let result = containsProperLength && containsSpecificValues
    return result
}

func properLength(serialKey: String) -> Bool {
    let length = count(serialKey)
    let result = (length == 10) ? true : false
    
    return result
}

func specificValues(serialKey: String) -> Bool {
    let result = (serialKey as NSString).containsString("01")
    return result
}


unlockApp("password")
unlockApp("password01")

//Abstraction

class Animal {
    var numberOfLimbs: Int
    var mammal: Bool
    var lungs: Bool
    
    init(limbs: Int, mammal: Bool, lungs: Bool) {
        numberOfLimbs = limbs
        self.mammal = mammal
        self.lungs = lungs
    }
}

let cat = Animal(limbs: 4, mammal: true, lungs: true)
cat.numberOfLimbs
cat.mammal
cat.lungs

//Inheritance

class Cat: Animal {
    var tail: Bool
    
    init (limbs: Int, mammal: Bool, lungs: Bool, tail: Bool) {
        self.tail = tail
        super.init(limbs: limbs, mammal: mammal, lungs: lungs)

    }
}

let tiger = Cat(limbs: 4, mammal: true, lungs: true, tail: true)

//Polymorphism

func hello() {
    println("Hello, world!")
}

func hello(name: String) {
    println("Hello \(name)!")
    
}

func hello(name: String, age:Int? ) -> Bool {
    if let age = age {
        println( "Hello, \(name) you are \(age) years old")
    } else {
        println("Hello \(name)")
    }
    return true
}

hello()
hello("Thomas")
hello("Kris", 28)
