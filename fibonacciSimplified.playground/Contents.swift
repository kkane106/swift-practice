var fibs = [0,1]
var fibsGenerator = GeneratorOf { () -> Int? in
    fibs.append(fibs.reduce(0, combine:+))
    return fibs.removeAtIndex(0)
}
println(fibsGenerator.next()!) // 0
println(fibsGenerator.next()!) // 1
println(fibsGenerator.next()!) // 2
println(fibsGenerator.next()!) // 3
println(fibsGenerator.next()!) // 4
println(fibsGenerator.next()!) // 5
println(fibsGenerator.next()!) // 6
println(fibsGenerator.next()!) // 7
println(fibsGenerator.next()!) // 8
println(fibsGenerator.next()!) // 9

