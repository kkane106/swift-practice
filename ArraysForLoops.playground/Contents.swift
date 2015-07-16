var x: [Int] = [1,2,3,4,5,6,7,8]

for i in 0...(x.count - 1) {
    if x[i] == 2 {
        println("it is two")
    } else {
        println("nope")
    }
}

x += [9]

var y: [String] = ["apple","banana","cheese","dairy","eggs"]

for i in 0...(y.count - 1) {
    if y[i] == "cheese" {
        println("true")
    }
}

let z = Array("banana")
z.reverse()

let y1 = Array("apple")

if y1[0] == z[0] {
    
}

let one = "banana", two = "apple"
if one != two {
    println("true")
}
