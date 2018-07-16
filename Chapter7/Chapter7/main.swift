//
//  main.swift
//  Chapter7
//
//  Created by ADMIN on 2018/7/16.
//  Copyright © 2018年 李强. All rights reserved.
//

import Foundation

var car = Car()
car.brand = "Audi"
car.speed = 80
car.drive()
//打印 Driving Audi at 80!


let car2 = Car(brand: "Benz",speed: 70)
car2.drive()
//打印 Driving Benz at 70!

var square = Square(side: 10)
print(square.area)
//打印 100.0

square.area = 25
print(square.area)
//打印 25.0
print(square.side)
//打印 5.0


var tower = Tower()
tower.height = 20

print(MathTool.sum(num1: 3, num2: 4))
//打印 7
print(MathTool.multiply(num1: 2, num2: 5))
//打印 10

var fileManager:FileManager? = FileManager()
fileManager!.loadFile()
fileManager!.writeFile()
fileManager = nil


var dog = Dog()
dog.run()
//打印 I'm running
dog.say()
//打印 I'm a dog,my name is doggy


let dog1 = Dog()
print("修改前dog1的名字是\(dog1.name)")
//打印 修改前dog1的名字是doggy
let dog2 = dog1
dog2.name = "Swift"

print("修改后dog1的名字\(dog1.name)")
//打印 修改后dog1的名字Swift
print("修改后dog2的名字\(dog2.name)")
//打印 修改后dog2的名字Swift
