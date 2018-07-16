//
//  Dog.swift
//  Chapter7
//
//  Created by ADMIN on 2018/7/16.
//  Copyright © 2018年 李强. All rights reserved.
//

import Foundation

class Dog :Animal{
    var name: String = "doggy"
    override func say(){
        print("I'm a dog,my name is \(name)")
    }
}
