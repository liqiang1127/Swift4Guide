//
//  Tower.swift
//  Chapter7
//
//  Created by ADMIN on 2018/7/16.
//  Copyright © 2018年 李强. All rights reserved.
//

import Foundation

class Tower {
    var height : Int = 10 {
        willSet {
            print("willSet：即将设置新值\(newValue)")
        }
        
        didSet{
            print("didSet：成功将\(oldValue)设置成\(height)")
        }
    }
}
