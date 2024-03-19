let closureAsCode = {
    let player1 = "Player1"
    let computer = "Computer"

    if player1 > computer {
        print("🕹️\(player1) wins!")
    }
    else {
        print("👾\(computer) wins, GAME OVER!")
    }
}

closureAsCode()

let closureAsVariable = { print("I am a closure") }

func printer(payload: String) { // Function
    print(payload) // Closure
}

func printIt(closure: (String) -> Void) {
    let message = "Hello my friend, i am your shield!🛡️"
    closure(message)
}

printIt(closure: printer)

var hello: () -> String = {
    return "Hello"
}
print(hello())

var hello2 = {
    return "Hello2"
}
print(hello2())


var double: (Int) -> (Int) = { x in
    return x * 2
}
print(double(2))

var alsoDouble = double
print(alsoDouble(2))
double = { x in
    return x * 3
}
print(double(2))