import Foundation



//var array = ["John", "Amy", "Joe"]
//
//array.sorted(by: alphaphetize)
//
//
//// Closure is a block of executable code
//// Function is a "named" closure
//func alphaphetize(s1: String, s2: String) -> Bool{
//    return s1 > s2
//}
//
//
//
////// Inline closure by defining a closure expression
//array.sorted(by: { (s1: String, s2: String) -> Bool in
//    return s1  > s2
//})
//
//
//// Type inference
//array.sorted(by: { (s1, s2) in
//    return s1  > s2
//})
//
//// Single expresssion closure
//array.sorted(by: { (s1, s2) in s1  > s2 })
//
////// Trailing closure syntax
//array.sorted { (s1, s2) in s1 > s2 }
//
////// Shorthand argument labels
//array.sorted { $0  > $1 }
//


//
//var sortingFunction: (String, String) -> Bool = alphaphetize
//
//


func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)

incrementByTen()   // returns a value of 10
incrementByTen()   // returns a value of 20

//
//let value = 10 + incrementByTen   // returns a value of 30
//value



class HTMLElement {
    
     let name: String
    let text: String?

    lazy var asHTML: () -> String = { [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
    
}

// <h1>Hello World!</h1>

var h1: HTMLElement? = HTMLElement(name: "h1", text: "Hello World")
print(h1?.asHTML())
h1 = nil
