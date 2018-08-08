//
//  Square.swift
//  SwiftObj
//
//  Created by ADMIN on 2018/8/8.
//  Copyright © 2018年 hdu. All rights reserved.
//

import Foundation

class Square {
    var side:Double
    
    var area:Double {
        get{
            return self.side * self.side
        }
        set(newArea){
            self.side = sqrt(newArea)
        }
    }
    
    init(side: Double) {
        self.side = side
    }
}
