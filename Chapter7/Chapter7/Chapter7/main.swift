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

