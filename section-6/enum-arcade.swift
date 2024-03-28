enum Direction {
    case up
    case down
    case left
    case right
}
var location = (x: 0, y: 0)
var steps: [Direction] = [.up, .up, .left, .down, .left]
for step in steps {
    switch step {
        case .up:
            location.y += 1
        case .down:
            location.y -= 1
        case .left:
            location.x -= 1
        case .right:
            location.x += 1
    }
}
print(location)

enum HandShape {
    case rock
    case paper
    case scissors
}

enum MathResult {
    case win
    case lose
    case draw
}

func match(_ hand1: HandShape, _ hand2: HandShape) -> MathResult {
    if hand1 == hand2 { return .draw }
    switch hand1 {
        case .rock:
            return hand2 == .scissors ? .win : .lose
        case .paper:
            return hand2 == .rock ? .win : .lose
        case .scissors:
            return hand2 == .paper ? .win : .lose
    }
}

print(match(.rock, .scissors))
print(match(.rock, .rock))
print(match(.rock, .paper))
