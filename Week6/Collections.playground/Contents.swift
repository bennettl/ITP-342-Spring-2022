import Foundation

var greeting = "Hello, playground"

// Full explicit typing
//var names: Array<String> = ["Chris", "Andy", "Sami"]

// Shorthand typing
//var names: [String] = ["Chris", "Andy", "Sami"]

// Type inference
var names = ["Chris", "Andy", "Sami"]


// Access a element in array (subscript notation)
names[0]


// Modify

// Add element
names.append("Luke")

// Remove element
names.remove(at: 0)

// Changing a element
names[1] = "Someone else"
names[1]


// Enumeration -> going through every element in the array

for name in names {
    print("\(name)")
}

for (index, name) in names.enumerated() {
    print("\(name) \(index)")
}


// Dictionary

// Full explicit typing
//var airports: Dictionary<String, String>  = [
//    "JFK" : "New York",
//    "LAX" : "Los Angeles",
//    "LHR" : "London"
//]

//var airports: [String : String]  = [
//    "JFK" : "New York",
//    "LAX" : "Los Angeles",
//    "LHR" : "London"
//]

var airports  = [
    "JFK" : "New York",
    "LAX" : "Los Angeles",
    "LHR" : "London"
]

// Access
let airport = airports["JFK"]
airports["JFKA"]

// Adding a key value pair
airports["YYZ"] = "Dublin"

// Remove a key value pair
airports["JFK"] = nil

airports

// Enumerate - go through every element of dictionary

for (airportCode, location) in airports{
    print("\(airportCode) \(location)")
}
