//
//      Functions Basics
//

let person1: String = "Sandro"

// Function with no parameters
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day). Have a nice day!"
}

print(greet(person: person1, day: "Thursday"))

// Question 1
func lunchSpecial(_ person: String, lunch: String) -> String {
    return "\(person), today is \(lunch) for lunch."
}

print(lunchSpecial(person1, lunch: "pizza"))


func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)! I see you are from \(hometown)."
}

print(greet(person: person1, from: "Napolis"))

// Question 2
func greet(person: String, from hometown: String, to destination: String) -> String {
    return "Hello \(person)! I see you are from \(hometown) and you are going to \(destination)."
}

print(greet(person: person1, from: "Napolis", to: "Rome"))

// Default parameter values
func function(paramaterOne: Int, parameterTwo: Int = 12) {
    print("Parameter One: \(paramaterOne)")
    print("Parameter Two: \(parameterTwo)")
}
function(paramaterOne: 6)

