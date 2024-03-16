let number1: Int? = 42
let number2: Int?

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

// Optional binding
let possibleNumber2: Int? = nil

if let number = possibleNumber2 {
    print("The number is \(number)")
} else {
    //print("possibleNumber2 is nil")
}

func printNumber(_ possiblex: Int?) {
    guard let numberx = possiblex else {
        print("number is nil")
        return
    }
    print("The number is \(numberx)")
}
let possible: Int? = 42
//printNumber(possible)

// Force unwrapping
var possibleNumber3: Int? = 42
let number = possibleNumber3! // Yay ✅ when possibleNumber3 is not nil, otherwise crash ❌

// Nil-Coalescing
let nickName: String? = "John"
let defaultName: String = "Nick"
let informalGreeting = "Hi \(nickName ?? defaultName)"
//print(informalGreeting)

//Optional Chaining
class Person {
    var residence: Residence?
}
class Residence {
    var numberOfRooms = 1
}

let john = Person()
//let roomCount = john.residence!.numberOfRooms // ❌
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    // this else will be executed, because john.residence is nil
    //print("Unable to retrieve the number of rooms.")
}


