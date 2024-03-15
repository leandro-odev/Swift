let number1: Int? = 42
let number2: Int?

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

// Optional binding
let possibleNumber2: Int? = nil

if let number = possibleNumber2 {
    print("The number is \(number)")
} else {
    print("possibleNumber2 is nil")
}

func printNumber(_ possiblex: Int?) {
    guard let numberx = possiblex else {
        print("number is nil")
        return
    }
    print("The number is \(numberx)")
}
let possible: Int? = 42
printNumber(possible)
