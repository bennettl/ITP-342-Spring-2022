import Foundation


protocol Drivable{
    
    func turnLeft()
    
    func turnRight()
    
    func accelerate(speed: Int)
    
    func brake(speed: Int)

}

class Car : Drivable{
    func turnLeft() {
        print("I'm a car turning left")
    }
    
    func turnRight() {
        print("I'm a car turning right")
    }
    
    func accelerate(speed: Int) {
        print("I'm a car accelerating at \(speed)")
    }
    
    func brake(speed: Int) {
        print("I'm a car braking at \(speed)")
    }
}

let mazda = Car()
mazda.accelerate(speed: 10)


