//: Playground - noun: a place where people can play

import UIKit

/*
 for index in var{
    循环体
 }
 */

//8.1
for index in 0...5{
    print("当前index为\(index)")
}

//8.2
for _ in 0..<3{
    print("Swift")
}

//8.3
let strs = ["Swift", "iOS", "HDU"]
for str in strs{
    print(str)
}


//8.4
var index = 0

while index <= 5 {
    print("当前index为\(index)")
    index += 1
}


// 8.5
var index2 = 0
repeat{
    print("当前index2为\(index2)")
    index2 += 1
}while(index2<=5)


//8.6
var index3 = 0
repeat {
    print("当前index3为\(index3)")
} while (index3 < 0)

//8.11

let time = 11
switch time {
    case let x where x >= 0 && x <= 7:
        print("睡觉时间")
    case 8:
        print("起床时间")
    case 9...12:
        print("上课时间")
    default:
        print("自由活动")
}




var count = 10
repeat{
    count = count + 1
    if( count == 12 ){ // index 等于 12 时跳过
        continue
    }
    print(count)
}while count < 15


