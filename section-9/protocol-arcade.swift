struct Point {
    let x: Int
    let y: Int

    init(_ x: Int, _ y: Int) {
        self.x = x
        self.y = y
    }
}

struct Player {
    var position = Point(0,0)
}

enum Direction {
    case up, down, left, right
}

protocol Movable {
    mutating func move(_ direction: Direction)
    func coordinates() -> String
}

extension Player: Movable {
    mutating func move(_ direction: Direction) {
        switch direction {
            case .up:
                position = Point(position.x, position.y + 1)
            case .down:
                position = Point(position.x, position.y - 1)
            case .left:
                position = Point(position.x - 1, position.y)
            case .right:
                position = Point(position.x + 1, position.y)
        }
    }

    func coordinates() -> String {
        return "(\(position.x), \(position.y))"
    }
}

var player = Player()
print(player.coordinates())

player.move(.up)
print(player.coordinates())
player.move(.up)
print(player.coordinates())

player.move(.left)
print(player.coordinates())

player.move(.down)
print(player.coordinates())

player.move(.right)
print(player.coordinates())
