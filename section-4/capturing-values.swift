func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)

incrementByTen() // returns 10
incrementByTen() // returns 20
incrementByTen() // returns 30

let alsoIncrementByTen = incrementByTen
alsoIncrementByTen() // returns 40
incrementByTen() // returns 50