// func sorted(by areInIncreasingOrder: (Int, Int) -> Bool) -> [Element]
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(s1: String, s2: String) -> Bool {
    return s1 > s2
}

let reversedNames = names.sorted(by: backward)
print(reversedNames)
// or you can write it as:
let reversedNames2 = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

let reversedNames3 = names.sorted(by: { s1, s2 in return s1 > s2 })
let reversedNames4 = names.sorted(by: { s1, s2 in s1 > s2 })
let reversedNames5 = names.sorted(by: { $0 > $1 })
let reversedNames6 = names.sorted() { $0 > $1}
let reversedNames7 = names.sorted { $0 > $1 }
let reversedNames8 = names.sorted(by: >)