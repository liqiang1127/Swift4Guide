//
//  Counter.swift
//  SwiftObj
//
//  Created by ADMIN on 2018/8/8.
//  Copyright © 2018年 hdu. All rights reserved.
//

import Foundation

class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}
