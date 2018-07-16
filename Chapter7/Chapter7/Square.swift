//
//  Square.swift
//  Chapter7
//
//  Created by ADMIN on 2018/7/16.
//  Copyright © 2018年 李强. All rights reserved.
//

import Foundation

class Square {
    
    var side:Double
    init(side: Double) {
        self.side = side
    }
    var area:Double {
        get{
            return self.side * self.side
        }
        
        set(newArea){
            self.side = sqrt(newArea)
        }
    }
}
