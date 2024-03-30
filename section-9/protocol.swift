protocol SomeProtocol {
    func doSomething()
}

protocol AnotherProtocol {
    func doSomethingElse()
}

struct SomeStruct: SomeProtocol {
    func doSomething() {
        //code
    }
}

extension SomeStruct: AnotherProtocol {
    func doSomethingElse() {
        //code
    }
}



protocol Clicked {
    var didClick: Bool { get }
    var numberOfClicks: Int { get }
    //let numberOfClicks: Int { get set } // error: it have be var
}

// stored property
struct Button: Clicked {
    var didClick: Bool = true
    var numberOfClicks: Int = 4
}

// Must be computed if in extension
struct Link {}
extension Link: Clicked {
    var didClick: Bool {
        return true
    }
    var numberOfClicks: Int {
        get {
            return 4
        }
    }
}

//Methods in protocol

protocol RandomNumberGenerator {
    func random() -> Int
}

class SimpleRandomNumberGenerator: RandomNumberGenerator {
    func random() -> Int {
        return 10
        //return Int.random(in: 0...10)
    }
}


protocol Toggleable {
    mutating func toggle()
}

enum OnOffSwitch: Toggleable {
    case on, off
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var lightSwitch = OnOffSwitch.off
print(lightSwitch)
lightSwitch.toggle()
print(lightSwitch)
lightSwitch.toggle()
print(lightSwitch)




protocol Growlable {
    var age: Int { get }
}

class Hobbit {
    var age: Int = 111
}

extension Hobbit: Growlable {}

func printAge(growlableHobbit: Hobbit & Growlable) {
    print(growlableHobbit.age)
}

let hobbit = Hobbit()
printAge(growlableHobbit: hobbit)

let bilbo = Hobbit()
let isGrowlable = bilbo is Growlable // true

class Dwarf {}
class MountainDwarf: Dwarf {}
let gimli = MountainDwarf()
let aDwarf = gimli as? Dwarf // downcasts gimil > Dwarf
let notDwarf = bilbo as? Dwarf // nil, because bilbo is not a Dwarf