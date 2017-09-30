//
//  main.swift
//  swift_base
//
//  Created by 武国斌 on 2017/3/13.
//  Copyright © 2017年 武国斌. All rights reserved.
//

import Foundation


class Shape {
    var sides = 0
    func simpleDescription() {
        print("A shape with \(sides) sides.")
    }
}

var shape = Shape()
shape.sides = 7
shape.simpleDescription()
//-------------------------class Shape-------------------------

class NewShape {
    var sides: Int = 0
    
    init(sides: Int) {
        self.sides = sides
    }
    
    func simpleDescription() {
        print("A newShape with \(sides) sides.")
    }
}

let newShape = NewShape.init(sides: 8)
newShape.simpleDescription()
//-------------------------class NewShape-------------------------

class Square: NewShape {
    var name : String
    
    override init(sides: Int) {
        self.name = ""
        super.init(sides: sides)
    }
    
    override func simpleDescription() {
        super.simpleDescription()
        print("fucking fucking")
    }
}

let square = Square.init(sides: 5)
square.simpleDescription()
//-------------------------class Square extends from NewShape-------------------------

class Circle: NewShape {
    var radiusStorage : Double
    var nameStorage : String
    
    init(radius: Double, name: String) {
        self.radiusStorage = radius
        self.nameStorage = name
        super.init(sides: 1)
    }
    
    var radius : Double {
        get {
            return self.radiusStorage
        }
        set {
            print("do set radius")
            self.radiusStorage = newValue
        }
    }
    
    var name : String {
        get {
            return self.nameStorage
        }
        set {
            print("do set name")
            self.nameStorage = newValue
        }
    }
    
    func area() -> Double {
        self.simpleDescription()
        return Double.pi * radiusStorage * radiusStorage
    }
    
    override func simpleDescription() {
        super.simpleDescription()
        print("i am circle, radius is \(radiusStorage), name is " + nameStorage)
    }
}

let circle = Circle.init(radius: 10, name: "good")
print("my area is \(circle.area())")
circle.radius = 100
circle.name = "okok"
print("my area is \(circle.area())")
//-------------------------class Circle extends from NewShape-------------------------


let base = Test.init()
base.excu()




