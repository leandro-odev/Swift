/*
🕹️ Min
Write a function named min that takes two Int values, a and b, and returns the smallest one. Use _ to ignore the external parameter names for both a and b.
> min(1,2)
> 1
*/

func min(_ a: Int, _ b: Int) -> Int {
    // in this return, we are using the ternary operator, which is a shorthand for an if-else statement.
    // if a is less than b, return a, otherwise return b.
    return a < b ? a : b
}
print(min(1,2))

/*
🕹️ Last Digit
Write a function that takes an Int and returns it’s last digit. Name the function lastDigit. Use _ to ignore the external parameter name.
> lastDigit(12345)                     Hint: % modulus operator
> 5
*/
func lastDigit(_ num: Int) {
    print(num%10)
}
lastDigit(12345)

/*
🕹️ First Numbers
Write a function named first that takes an Int named N and returns an array with the first N numbers starting from 1. Use _ to ignore the external parameter name.
> first(3)
> [1, 2, 3]
*/
func first(_ N: Int) -> [Int] {
    var arr = [Int]() // () is the initializer for an array, which is an empty array in this case.
    for i in 1...N {
        arr.append(i)
    }
    return arr
}
print(first(3))

/*
🕹️ Reverse
Write a function named reverse that takes an array of integers named numbers as a parameter. The function should return an array with the numbers from numbers in reverse order.
> reverse([1, 2, 3])
> [3, 2, 1]
*/

func reverse (_ arr: [Int]) -> [Int] {
    // var reversedArr = [Int]()
    // for i in stride(from: arr.count, to: 0, by: -1) {
    //     reversedArr.append(arr[i-1])
    // }
    // return reversedArr
    return arr.reversed()
}

print(reverse([1, 2, 3]))

/*
🕹️ Sum
Write a function named sum that takes an array of integers and returns their sum. Use a label variable of the word 'of' and a parameter label named numbers.
> sum(of: [1, 2, 3])
> 6
*/

func sum(of numbers: [Int]) -> Int {
    var sum = 0
    for num in numbers {
        sum += num
    }
    return sum
}
print(sum(of: [1, 2, 3]))