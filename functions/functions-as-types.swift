func addTwoInts(_ num1: Int, _ num2: Int) -> Int {
    return num1 + num2
}

var mathFuction: (Int, Int) -> Int = addTwoInts
//print(mathFuction(2, 3))

// Function as a parameter, next case "condition" is a function, so we can pass a function as a parameter
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if (condition(item)) {
            return true
        }
    }
    return false
}
// This is a function that will be passed as a parameter. In this case we are passing a function that will return true if the number is less than 10, so the function hasAnyMatches will return true if any number in the list is less than 10
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
// var numbers = [20, 19, 11, 12]
// print(hasAnyMatches(list: numbers, condition: lessThanTen))


// Question: Write a function for above matchers that will return true if any number are between 1 and 10 (inclusive).

// [20, 19, 11, 12] = false (no number between 1 and 10)
// [20, 19, 11, 12, 10, 1] = true (10 and 1 are between 1 and 10)
// [20, 19, 11, 12, 13] = false (no number between 1 and 10)

func betweenOneAndTen(number: Int) -> Bool {
    return number >= 1 && number <= 10
}

print(hasAnyMatches(list: [20, 19, 11, 10], condition: betweenOneAndTen))
