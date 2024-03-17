/*
🕹 Unwrap with if-let

Unwrap the following Optional using the if let statement
*/

let firstname: String? = "Sam"

if let name = firstname {
    print(name)
}


/*
🕹 Unwrap with guard

Unwrap the following Optional using the guard statement
*/

func printName(_ name: String?) {
    guard let name = name else {
        print("name is nil")
        return
    }
    print(name)

}

enum MyError: Error {
    case invalidUsername
}

let lastname: String? = "Flynn"

guard let name = lastname else {
    throw MyError.invalidUsername
}
print(name)
//printName(lastname)
