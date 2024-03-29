struct Person {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

let person = Person(age: 25)
print(person.ageInDogYears) // 175

struct Triangle {
    let edgeA: Double
    let edgeB: Double
    let edgeC: Double

    var isEquileteral: Bool {
        return edgeA == edgeB && edgeB == edgeC
    }
}

let triangle = Triangle(edgeA: 3, edgeB: 2, edgeC: 3)
print(triangle.isEquileteral) // true


// struct Post {
//     var title: String {
//         didSet {
//             self.title = title.trimmingCharacters(in: .whitespacesAndNewlines)
//         }
//     }
// }

// var post = Post(title: "  Hello, World!  ") // it have to be var
// post.tittle                                 // didSet not called
// post.tittle = "  Hello, World!  "           // didSet called
// post.tittle                                 // "Hello, World!"


let pi = 3.14159
class Circle {

    var radius: Double {
        didSet {
            if radius < 0 {
                radius = 0 // if use oldValue here, it will get the old value, example: circle.radius = 10, and the value that receive is negative, so oldValue will be 10, and then it will be set to 10 and not the default value 0, that is what we want in this case
            }
        }
    }
    
    var area: Double {
        get {
            return radius * radius * pi
        }
        set(newArea) {
            radius = (newArea / pi).squareRoot() // squareRoot is a method that returns the square root of a number, or sqrt in C
        }
    }


    // do the init thing, or you will get an error
    // but you can also use a default value to radius to avoid this, like this:
    // var radius: Double = 0
    init (radius: Double) {
        self.radius = radius
    }
}

let circle = Circle(radius: 5)
circle.radius = 10
print(circle.radius) // 10
print(circle.area) // 314.159
circle.radius = -10
print(circle.radius) // 0
print(circle.area) // 0
circle.area = 20
print(circle.radius) // 2.523534
