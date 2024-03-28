enum Device {
    case iPad
    case iPhone
    var Year: Int {
        switch self {
            case .iPad:
                return 2010
            case .iPhone:
                return 2007
        }
    }
}

let myDevice = Device.iPad
let year = myDevice.Year
print("My device was introduced in \(year)")

enum Charcter {
    enum Weapon {
        case sword
        case bow
        case dagger
    }

    case thief(weapon: Weapon)
    case warrior(weapon: Weapon)

    func getDescription() -> String {
        switch self {
            case .thief(let weapon):
                return "Thief chosen \(weapon)"
            case .warrior(let weapon):
                return "Warrior chosen \(weapon)"
        }
    }
}

let myCharacter = Charcter.thief(weapon: .dagger)
let description = myCharacter.getDescription()
print(description)

enum Information <T1, T2> {
    case name(T1)
    case website(T1)
    case age(T2)
}

let info = Information<String, Int>.age(20)

case Beverage {
    case coffee
    case tea
    case juice
}