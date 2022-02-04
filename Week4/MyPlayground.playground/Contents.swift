import Foundation

// Definition
//struct Person{
//
//    // Properties
//    let name: String
//
//    var age: Int = 20
//
//    // Field level initialization
//    var eyeColor: String = "blue"
//
//    // Initializer
//    init(name: String){
//        self.name = name
//    }
//
//    init(name: String, age: Int, eyeColor: String){
//        self.name = name
//        self.age = age
//        self.eyeColor = eyeColor
//    }
//
//    // Methods
//
//    func greet(){
//        print("Hi my name is \(name) and my age is \(age)")
//    }
//
//
//
//}
//
//// Instantiation
//
//
//// Memberwise initalizer - FOR STRUCTURES ONLY - a default initializer is created for you by self, taking into consider all of the member properties
//var sarah = Person(name: "Sarah", age: 20, eyeColor: "blue")
//sarah.age
//sarah.age = 30
//sarah.age
//
//sarah.eyeColor
//sarah.greet()
//
//
//
//
//
//
//
//
//// Class
//
//class Rectangle{
//
//    // Stored property
//    var height = 0.0
//
//    var width = 0.0
//
//    // Compute property
//    var area: Double{
//        return height * width
//    }
//
////    func getArea() -> Double{
////        return height * width
////    }
//
//    // Deinitialize
//    deinit{
//        print("i'm going away!!!")
//    }
//}
//
//var rect: Rectangle? = Rectangle()
////rect.height = 20.0
////rect.width = 40.0
////rect.area
//
//rect = nil
////rect.getArea()
//
//
//
//class ShoppingListItem {
//    // field level
//    var name: String = "Default"
//    var quantity = 1
//    var purchased = false
//
//}
//var item = ShoppingListItem()
//
//
//
//struct Size {
//    var width = 0.0, height = 0.0
//}
//
//let twoByTwo = Size(width: 2.0, height: 2.0)
//let test = Size()
//test.height



//class Counter {
//    var count = 0
//
//    func increment(anything amount: Int = 100) {
//        count += amount
//    }
//
//    func reset() {
//        count = 0
//    }
//}
//let counter = Counter()   // the initial counter value is 0
//counter.increment(anything: 20)
//counter.count



// open ---> less strict,  anyone can access AND subclasses
// public --> anyone can access
// internal*** --> anything in the module can access
// fileprivate --> only the source file can access the property
// private ---> most strict / only the class / structure definition can access

//struct School{
//
//    let name: String
//
//    private(set) static var totalSchools = 0
//
//    init(name: String){
//        self.name = name
//        School.totalSchools += 1
//    }
//}
//
//let usc = School(name: "USC")
//let ucla = School(name: "UCLA")
//let uci = School(name: "UCI")
//School.totalSchools


class Vehicle{
    func turnLeft(){
        print("vehicle turning left")
    }
}

class Bike: Vehicle{
    
    override func turnLeft() {
        super.turnLeft()
        print("bike turning left")
    }
}

let bike = Bike()
bike.turnLeft()
