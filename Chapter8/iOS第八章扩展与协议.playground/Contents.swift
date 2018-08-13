//: Playground - noun: a place where people can play

import UIKit

//例 8-1
class Num {
    var a:Int=2
    var stt = "hello"
}
extension Num{                                    //属性的扩展
    var b:Double{return 2.1}                      //计算属性
    // var b:Double=2.1                           //报错，因为是存储属性
    class var PrintHelloWorld:String{             //类型属性
        return "hello world!!"
        }
}
var number=Num()
print(number.a,number.b,Num.PrintHelloWorld,number.stt)

//例 8-2

class Student {
    var name:String=""
    var id:String=""
    var age:Int=0
}
//扩展方法
extension Student{
    func printInformation(name:String,id:String,age:Int) {
        print("\(name)'s id is \(id).")
        print("\(name) is \(age).")
        }
    class var isStudent:String{
        return "He/She is a student."
        }
}
print(Student.isStudent)
var st=Student()
st.printInformation(name: "Jane", id: "10015", age: 16)

//例 8-3
extension Int{
    mutating func add(){
        self=self+10
     }
}
var h=5
h.add()
print(h)

//例 8-4
struct Newstruct{
    var num:Int
    var str:String="nothing"
    init(num0:Int) {                               //原构造器
        num=num0
        }
}
extension Newstruct {                              //扩展构造器
    init(num1:Int,str1:String){
        num=num1
        str=str1
        }
}
let n=Newstruct(num0: 55)
let m=Newstruct(num1: 66, str1: "Hello")
print(n.num,n.str)
print(m.num,m.str)

//例 8-5
class Ms {
    var f:Int
    var str:String
    init() {
        f=10
        str="jarry"
    }
}
extension Ms{
    convenience init(f:Int,nr:String){
        self.init()
        self.str=nr
        self.f=f
    }
}
var obj=Ms()
print(obj.str)
var obj1=Ms(f: 66, nr: "micheal")
print(obj1.str)

//例 8-6
struct Ss {
    var nee:Int
}
extension Ss{
    subscript(x:Int,y:Int)->Bool{
        return x*y/nee == 0 ? true:false
    }
}
let ss=Ss(nee: 3)
print(ss[8,22])

//例 8-7
protocol Stu{
    static var age:Int { get }
    var name:String { get }
}
class Studentclass: Stu{
    var name:String {
        return "Jerry"
    }
    class var age:Int {
        return 10
    }
}
var ncc = Studentclass()
print(ncc.name)
print(Studentclass.age)

//例 8-8
protocol PrintHello {
    func printHello()
}
class SayHello:PrintHello{
    var name:String="Jane"
    func printHello(){
        print("Hello \(name)!!")
    }
}
let ls=SayHello()
ls.printHello()

//例 8-9
protocol Change {
    mutating func changeNum()
}
enum numberChoice:Double,Change{
    case a=1.1
    case b=2.2
    case c=3.3
    mutating func changeNum(){                     //改变枚举中属性的值
        switch self{
            case .a:
                self = .c
            case .b:
                break
            case .c:
                self = .a
            
        }
    }
}
var nn=numberChoice.a
nn.changeNum()
print(nn.rawValue)

//例 8-10
@objc protocol DataMul{
    @objc optional var value:Int{get}
    @objc optional func dataMultiplied(data:Double)->Double
}
//以下类没有实现所有协议中成员
class Data:DataMul{
    var n=1.0
    var value1 = 3
    @objc func dataMultiplied(data: Double) -> Double {
        for _ in 1...value1{
             n=n*data
        }
    return n
    }
}
let data_x=Data()
print(data_x.dataMultiplied(data: 2.2))

//例 8-11
protocol Naaa {                                   //协议
    var h:Double{get}
    var style:String{get}
    var r:Double{get}
}
func cake(pa:Naaa){                              //参数为协议类型
    let h=pa.h
    let area=pa.r*pa.r
    let name=pa.style
    print(h,area,name)
}
struct CakeStyle:Naaa{                            //遵守协议的结构体
    var h:Double
    var style: String
    var r: Double
}
let s = CakeStyle(h: 0.2, style: "pudding", r: 0.6)  //结构体实例化
cake(pa:s)                                    //结构体类型实参作为参数
