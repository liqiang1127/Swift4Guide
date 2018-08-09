//: Playground - noun: a place where people can play

import UIKit
//例 5-1
func printHelloSwift(){                  //声明定义函数
    print("Hello Swift!")
}
printHelloSwift()                        //调用函数

//例 5-2
func sum(value1:Int,value2:Int){
    print(value1+value2)
}
sum(value1:20,value2:10)

//例 5-3
func sum1(value1:Int,value2:Int)->Int{
    return value1+value2
}
print(sum1(value1:20,value2:10))         //直接调用
let d=sum1(value1:20,value2:20)          //赋值
print(d)

//例 5-4
func sum2(value1:Int,value2:Int,str1:String,str2:String)->(Int,String){
    //2个数和2个字符串分别相加
    let k=value1+value2
    let l=str1+str2
    return (k,l)
}
print(sum2(value1: 5, value2: 1, str1: "hello", str2: "swift"))

//例 5-5
func sum3(_ value1:Int,_ value2:Int)->Int{
    return value1+value2
}
print(sum3(10,20))

//例 5-6
func sum4(value1:Int=20,value2:Int)->Int{ //参数有默认值
    return value1+value2
}
print(sum4(value2:20))

//例 5-7
func sum5(numbers:Double...){               //可变参数
    var total:Double=0.0
    //求和
    for number in numbers{
        total+=number
        }
    print(total)
}
sum5(numbers: 1.1,2.22,4)

//例 5-8
func sum6(value1:inout Int,_ value2:Int){   //输入输出参数
     value1 = value2+value1
}
var s = 20
print("没加任何值的s为\(s)")
sum6(value1: &s, 20)
print("加了值后的s为\(s)")

//例 5-9
func sum7(value1:Int,value2:Int)->Int{
    return value1+value2
}
let add:(Int,Int)->Int=sum7
print(add(20, 30))
print(sum7(value1: 40, value2:20))

//例 5-10
func sum8(value1:Int,value2:Int)->Int{
    return value1+value2
}
func adder(fun:(Int,Int)->Int,a:Int,b:Int)->Int{
    let x=fun(a,b)
    return x
}
print(adder(fun: sum8, a: 20, b: 60))

//例 5-11
func mult(a:Int,b:Int)->Int{
    return a*b
}
func sum9(value1:Int,value2:Int)->Int{
    return value1+value2
}
func numchange(c:Int,d:Int)->(Int,Int)->Int{
    return c>d ? sum9:mult
}
let num=numchange(c: 40, d: 50)
print(num(5,5))

//例 5-12
func isDivisible (_ a:Int,_ b:Int)->()->String{
    func divisibled()->String{return "\(b)可以被\(a)整除。"}
    func undivisibled()->String{return "\(b)不可以被\(a)整除。"}
    return b%a==0 ? divisibled:undivisibled
}
let x=isDivisible(3, 46)                    //x是一个函数
let result=x()                              //调用x函数
print(result)

//例 5-13
func fac(value:Int)->Int{                   //递归调用
    if(value==1){
        return value
    }else{
        return value*fac(value: value-1)
    }
}
print(fac(value: 5))

//例 5-14
//有参有返回值闭包
let divide = {(val1: Int, val2: Int) -> Int in
    return val1 / val2
}
let res = divide(200, 20)
print (res)
//无参无返回值闭包
let printSwift={() in
    print("Swift")
}
printSwift()

//例 5-15
func hasMultiple(arr:[Int],_ value:Int,_ cm:(_ num:Int,_ value:Int) ->Bool)->Bool{
    //闭包作为参数
    for item in arr{
        if(cm(item,value)){
            return true
            }
        }
    return false
}
let ray=[20,80,60,100]
var v=hasMultiple(arr: ray,16,{(num,value)->Bool in return num%value==0})
print(v)

//例 5-16
let number=[1,55,26,8,46,20]
var reverse = number.sorted() { $0 > $1 }
var reverse1 = number.sorted { $0 > $1 }
print(reverse)
print(reverse1)

//例 5-17
func numberOfMultiply(multiplier num:Int) -> () -> Int {
    var result = 3
    func multiply() -> Int {
        result *= num
        return result
        }
    return multiply
}
let mul = numberOfMultiply(multiplier: 2)
print(mul())
print(mul())
