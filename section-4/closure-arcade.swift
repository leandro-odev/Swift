func applyKTimes (teste1 K: Int, closure: () -> Void) {
    for _ in 0..<K {
        closure()
    }
}

func printHello() {
    print("Hello")
}

//applyKTimes(teste1: 3, closure: printHello)

// applyKTimes(teste1: 3) { 
//     print("Hello") 
// }

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 11]
let multipleOfThree = numbers.filter {$0 % 3 == 0}
//print(multipleOfThree)

var max = numbers.reduce(Int.min) { $0 > $1 ? $0 : $1 }
max = numbers.reduce(0) {
    if $0 > $1 {
        return $0
    } else {
        return $1
    }
}
//print(max)

var strings = ["Hello", "World", "Swift"]
var stringAll = strings.reduce("") { $0 == "" ? $1 : "\($0) \($1)" }
//print(stringAll)


var numbers1 = [1, 2, 3, 4, 5, 6]
var oddNumbers1 = numbers1.filter { $0 % 2 != 0 }
var mapNumbers1 = oddNumbers1.map { $0 * $0 }
var reduceNumbers1 = mapNumbers1.reduce(0) { $0 + $1 }
//print(reduceNumbers1)

var array = [1, 2, 3, 4]

func forEach(_ array: [Int], closure: (Int)) -> Void {
    array.map(closure($0))
}

forEach(array: array) {
    print($0 +1)
}

// forEach(array) { (element) in
//     print(element)
// }