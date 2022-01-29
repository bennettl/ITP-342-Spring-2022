import Foundation


//// This is cool!!
//
//
///*
//
// This comment
// span multiple lines
// ....
// keeps going
// */
//
//
//// Primitive data types
//
//// Character
//"A"
//"-"
//"%"
//
//// String
//"one two three"
//"1 + 2"
//"whatever you want!!! 😂"
//
//// Int
//-1
//0
//100
//
//// Double | Float
//20.30
//-200.01
//0.0
//
//// Boolean
//true
//false
//
//
//// Variables / Constants
//
//let name: String = "Bennett"
//
//var numberOfMacbooks: Int = 5
//numberOfMacbooks = 10
//
//
//let lastName: Character = "L"
//
//let aRandomNumber: Float = 20.13
//
//// "c" + 2.0
//
//// TODO - concatenate 2 characters
//
//let twenty: Int = 20
//let d: Character = "d"
//let whatIsThis = 20 + 40.13
//
//// Result of arithmetic operations is a number
//20 + 50
//
//
//let result = 14.0 / 5.0
//result
//
//// String interpolation
//let age = 20
//let f = "Jacob \(age + 10)"
//print(f, terminator: "\n")
//
//// Result of relational operations is a boolean value
//10 < 20
//
//if age < 20{
//    print("my age is less than 20")
//} else if age == 20 {
//    print("my age is 20")
//} else {
//    print("my age is greater than 20")
//}
//
//// For - execute a piece of code for a finite amount of times
//
//for counter in 10..<15{
//    print("counter is \(counter)")
//}
//
//// 10 - 20 , step every 2
//for counter in stride(from: 10, through: 20, by: 2){
//    print("counter is \(counter)")
//}
//
//// While - execute a piece of code until a condition is false
//
//var count = 0
//
//while count < 10{
//    count += 1
//    print("count \(count)")
//}

// DRY - Don't repeat yourself

// Functions

// Define - what the function does
//
func printName(){
    let firstName = "Bennett"
    let lastName = "Lee"
    print("Hello \(firstName) \(lastName)!!!!")
}
//
//// Invocation - execute the function
//printName()
//printName()
//printName()
//printName()
//printName()


// Parameters -> inputs to the function

//func printName(firstName: String, lastName: String){
//    print("Hello \(firstName) \(lastName)!!!!")
//}


//func printName(_ firstName: String, _ lastName: String){
//    print("Hello \(firstName) \(lastName)!!!!")
//}

//printName( "John",  "Smith")


//func sum(firstNumber x: Int, with secondNumber: Int){
//    print("\( x + secondNumber)")
//}

//sum(firstNumber: 20, with: 30)

func multiply(x: Int, y: Int) -> Int{
    print("\(x * y)")
    return x * y
}

// Variadic paraters
//func sum(numbers: Int...){
//
//    var sum = 0
//    for number in numbers{
//        sum += number
//    }
//    print("the sum is \(sum)")
//
//}

//sum(numbers: 1,2,3,4,5,7,10,20)

//func makeWebRequest() -> (statusCode: Int, statusDescription: String){
//    return (200, "Ok")
//}
//
//let result = makeWebRequest()
//result.statusCode
//result.1


//let result = multiply(x: 10, y: 2)
//result


func swap(x: inout Int, with y: Int){
    x = y
}


var originalNumber = 10
var newNumber = 20
swap(x: &originalNumber, with: newNumber)
originalNumber

var mathFunction: (Int, Int) -> Int = multiply
mathFunction(10, 20)


let paragraph = """
  \t'This'
😂

        is a
    multiline string
"""

paragraph.isEmpty
paragraph.count

//print(paragraph)

var message = "Hello."
message.append(" Nice to meet you.")

//message[0]
// message equals "Hello. Nice to meet

message[message.startIndex]
message[message.index(after: message.startIndex)]
message[message.index(before: message.endIndex)]


//for character in message{
//    print(character)
//}
//
//"  ".isEmpty

// To access characters / substring of a string, you need to use the index object, not Int



let favoriteColor = "green"

//if favoriteColor == "blue"{
//    print("we're best friends")
//} else if favoriteColor == "orange"{
//    print("hmmmmm")
//} else if favoriteColor == "black"{
//    print("=O")
//} else{
//    print("what is it???")
//}

//switch favoriteColor{
//    case "blue", "teal", "green", "red":
//        print("we're best friends")
//    case "orange":
//        print("hmmmmm")
//    case "black":
//        print("=O")
//    default:
//        print("what is it???")
//}
//
//let favoriteNumber = 100
//
//switch favoriteNumber{
//    case 1...50:
//        print("a")
//    case 50...100:
//        print("b")
//    default:
//        ()
//}

// Everything should have value
//var name: Optional<String> = nil
var name: String? = "Bennett"

var lastName: String = ""


print(name ?? "Default Name")


name = nil


// How do we access values of an optional?

// 1. Force Unwrapping
    // easy but dangerous, app can crash if the variable points to nil
    // makes sense during early stages of development, when you want to surface problems where a value should definately exist

    print(name)


// 2. Conditional / optional binding
if let n = name{
    print("my name is \(n)")
}


// 3. Implicitly unwrapped optional

print(name)
//print(name)
//print(name)
//print(name)
//print(name)

// 4. Optional chaining





