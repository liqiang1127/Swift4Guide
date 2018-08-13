//
//  Tower.swift
//  SwiftObj
//
//  Created by ADMIN on 2018/8/8.
//  Copyright © 2018年 hdu. All rights reserved.
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
