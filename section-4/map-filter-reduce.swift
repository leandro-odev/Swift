var number1 = [1, 2, 3]
var strings1 = [String] = []
for number in number1 {
    strings1.append(String(number))
}
var number2 = [1, 2, 3]
var strings2 = numbers2.map { "\(0)"}

var number3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var evenNumbers = number3.filter { $0 % 2 == 0}
var oddNumbers = number3.filter { $0 % 2 != 0}

var number4 = [1, 2, 3, 4, 5]
var sum = number4.reduce(0) { $0 + $1 } // 15
// what happens in the reduce function is that the first parameter is the initial value of the accumulator, in this case 0, and the second parameter is the closure that takes the accumulator and the current value of the array and returns the new value of the accumulator. The reduce function returns the final value of the accumulator.
// $0 is the accumulator, and $1 is the current value of the array.