//
//  Car.swift
//  Chapter7
//
//  Created by ADMIN on 2018/7/16.
//  Copyright © 2018年 李强. All rights reserved.
//
import Foundation

class Car {
    var brand : String
    var speed : Int
    
    init() {
        self.brand = ""
        self.speed = 0
    }
    
    init(brand: String, speed: Int) {
        self.brand = brand
        self.speed = speed
    }
    
    func drive(){
        print("Driving \(brand) at \(speed)!")
    }
}

