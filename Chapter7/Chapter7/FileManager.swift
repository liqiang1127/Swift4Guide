//
//  FileManager.swift
//  Chapter7
//
//  Created by ADMIN on 2018/7/16.
//  Copyright © 2018年 李强. All rights reserved.
//

import Foundation


class FileManager {
    func loadFile(){
        print("Load file from the resource")
    }
    
    func writeFile(){
        print("Write the data into the file")
    }
    
    deinit {
        print("Delete the fileManager")
    }
}
