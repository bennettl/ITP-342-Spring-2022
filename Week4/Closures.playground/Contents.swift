import Foundation



var array = ["John", "Amy", "Joe"]

array.sorted(by: alphaphetize)


// Closure is a block of executable code
// Function is a "named" closure
func alphaphetize(s1: String, s2: String) -> Bool{
    return s1 > s2
}



// Inline closure by defining a closure expression
array.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1  > s2
})

// Type inference
array.sorted(by: { (s1, s2) in
    return s1  > s2
})

// Single expresssion closure
array.sorted(by: { (s1, s2) in s1  > s2 })

// Trailing closure syntax
array.sorted { (s1, s2) in s1  > s2 }

// Shorthand argument labels
array.sorted {  $0  > $1 }


var sortingFunction: (String, String) -> Bool = alphaphetize


