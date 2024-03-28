enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = CompassPoint.west
directionToHead = .east

switch directionToHead {
    case .north:
        print("Lots of planets have a north")
    case .south:
        print("Watch out for penguins")
    case .east:
        print("Where the sun rises")
    case .west:
        print("Where the skies are blue")
}

enum Barcode {
    case upc(Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
switch productBarcode {
    case .upc(let numberSystem):
        print("UPC: \(numberSystem)")
    case .qrCode(let productCode):
        print("QR code: \(productCode)")
}


enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

let space = ASCIIControlCharacter.tab.rawValue

enum OtherPlanet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

enum AnotherCompassPoint: String {
    case north, south, east, west
}

let earthsOrder = OtherPlanet.earth.rawValue
let sunsetDirection = AnotherCompassPoint.west.rawValue