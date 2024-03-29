@propertyWrapper 
struct TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
}

struct SmallRectangle {
    @TwelveOrLess var height: Int
    @TwelveOrLess var width: Int
}

var rectangle = SmallRectangle()
print(rectangle.height) // 0
rectangle.height = 10
print(rectangle.height) // 10
rectangle.height = 24
print(rectangle.height) // 12

struct AnotherSmallRectangle {
    private var _height = TwelveOrLess()
    private var _width = TwelveOrLess()

    var _height: Int {
        get { return _height.wrappedValue }
        set { _height.wrappedValue = newValue }
    }

    var _width: Int {
        get { return _width.wrappedValue }
        set { _width.wrappedValue = newValue }
    }
}