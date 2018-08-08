//
//  SurveyQuestion.swift
//  SwiftObj
//
//  Created by ADMIN on 2018/8/8.
//  Copyright © 2018年 hdu. All rights reserved.
//

import Foundation

class SurveyQuestion {
    var text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print("text:\(text)")
//        print("response:\(response)")
    }
}
