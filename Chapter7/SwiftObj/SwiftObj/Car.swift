//
//  Car.swift
//  SwiftObj
//
//  Created by ADMIN on 2018/8/8.
//  Copyright © 2018年 hdu. All rights reserved.
//

import Foundation

class Car{
    var brand:String
    var speed:Int
    init(){
        brand = "benz"
        speed = 60
    }
    
    init(brand:String, speed:Int){
        self.brand = brand
        self.speed = speed
    }
    
    func drive() {
        print("brand is \(brand), speed is \(speed)")
    }
}
