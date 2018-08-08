//
//  main.swift
//  SwiftObj
//
//  Created by ADMIN on 2018/8/8.
//  Copyright © 2018年 hdu. All rights reserved.
//

import Foundation
//------------------------------------------------------------------
var stu = Student()
stu.sayHi()
stu.name = "Jack"
stu.sayHi()

//------------------------------------------------------------------

var car = Car()
car.drive()
var car2 = Car(brand: "BMW", speed: 70)
car2.drive()

//------------------------------------------------------------------

var sq = SurveyQuestion(text: "Are you ok?")
sq.ask()

//------------------------------------------------------------------

var dog1 = Dog()
print("dog1:\(dog1.name)")
var dog2 = dog1
dog2.name = "xixi"
print("dog1:\(dog1.name)")
print("dog2:\(dog2.name)")

//------------------------------------------------------------------

var fileManager:FileManager? = FileManager()
fileManager!.loadFile()
fileManager!.writeFile()
fileManager = nil

//------------------------------------------------------------------

var square = Square(side: 10)
print("area:\(square.area)")
square.area = 25
print("area:\(square.area)")
print("side:\(square.side)")

//------------------------------------------------------------------

var tower = Tower()
tower.height = 20

//------------------------------------------------------------------

let counter = Counter()
print("count:\(counter.count)")

counter.increment()
print("count:\(counter.count)")

counter.increment(by: 3)
print("count:\(counter.count)")

counter.reset()
print("count:\(counter.count)")


//------------------------------------------------------------------

let A = -20
let absA = Math.abs(A)
print("absA:\(absA)")

//------------------------------------------------------------------

var cat = Cat()
cat.run()
cat.say()

