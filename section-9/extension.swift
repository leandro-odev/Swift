// everything in extension need to be var, no let allowed, because it is a computed property, not a stored property


extension Int {
    func repetition(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}

3.repetition {
    print("💢")
}

extension Int {
    mutating func square() {
        self = self * self
    }
}

var someInt = 3
someInt.square()

extension Int {
    enum Kind {
        case negative, zero, positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x < 0:
            return .negative
        default:
            return .positive
        }
    }
}

func printIntegerKinds(_ numbers: [Int]) {
    for number in numbers {
        switch number.kind {
        case .negative:
            print("- ", terminator: "")
        case .zero:
            print("0 ", terminator: "")
        case .positive:
            print("+ ", terminator: "")
        }
    }
    print("")
}

var numbers = [1, 2, 3, 0, -1, -2, -3]
printIntegerKinds(numbers)