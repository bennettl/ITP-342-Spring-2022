//
//  Protocol.swift
//  
//
//  Created by lee bennett on 2/14/22.
//

import Foundation


protocol Drivable{
    
    func turnLeft()
    
    func turnRight()
    
    func accelerate(speed: Int)
    
    func brake(speed: Int)

}

class Car : Drivable{
    
}

let mazda = Car()





