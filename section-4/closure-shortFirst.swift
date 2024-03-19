var array = ["John", "Paul", "George", "Ringo"]
func shortFirst(_ s1: String, _ s2: String) -> Bool {
    return s1.count < s2.count
}
//1 - array.sorted(by: shortFirst)

//2 - array.sorted(by: { (s1: String, s2: String)->Bool in
//    return s1.count < s2.count
//    })

//3 - array.sorted(by: {s1, s2 in return s1.count < s2.count})
//4 - array.sorted(by: s1, s2 in s1.count < s2.count)
//5 - array.sorted(by: {$0.count < $1.count})
6 - array.sorted() {$0.count < $1.count}


print(array)