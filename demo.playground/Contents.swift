//: Playground - noun: a place where people can play

import UIKit

//var myClosure = { (a:Int) -> Int in
//    return a + 1
//}
//myClosure(5)
//
//({ (str:String) -> Void in
//    print(str)
//}) ("IDE")
//
//var number:(Int, Int, Int) -> (Int) = {
//    return $0 + $1 + $2
//}
//
//number(1, 2, 3)
//
//func testClosure(name:String, myClosure:(String) -> Void) {
//    print("Test Closure")
//    myClosure(name)
//}
//
////testClosure(name: "hello closure", myClosure: {(name) -> Void in print(name)})
//
//testClosure(name: "hello world") { (ten) in
//    print(ten)
//    print("hello world")
//}
//Ham so sanh 2 so voi kieu du lieu bat ki
//Tra ve 1 neu a > b
//Tra ve 0 neu a = b
//Tra ve -1 neu a < b

//enum dayOfWeek {
//    case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
//}
//
//var index:dayOfWeek = dayOfWeek.Tuesday
//
//switch index {
//case dayOfWeek.Monday, dayOfWeek.Tuesday:
//    print("Today is Monday And Tuesday")
//case dayOfWeek.Friday:
//    print("Today is Friday")
//default:
//    print("Today is other day")
//}

//Struct

//struct People {
//    var name:String
//    var age:Int
//    func PrintAnyString() -> Void {
//        print("Hello World")
//    }
//
//    mutating func AfterOneYear() -> Void {
//        self.age = self.age + 1
//    }
//}
//
//var mySelf:People = People(name: "Son", age: 20)
//
//mySelf.PrintAnyString()
//mySelf.AfterOneYear()
//
//print("Tuoi hien tai: \(mySelf.age)")

//class People {
//    var name:String!
//    var age:Int!
//
//    init(name:String, age:Int) {
//        self.name = name
//        self.age = age
//    }
//    func AfterOneYear() -> Void {
//        age = age + 1
//    }
//}
//
//class Student:People {
//    var school:String!
//    var level:Int!
//
//    override func AfterOneYear() {
//        super.AfterOneYear()
//        level = level + 1
//    }
//}
//
//var mySelf:People = People(name : "Son", age : 1)
//
//print(mySelf.age)
//
//mySelf.AfterOneYear()
//
//print(mySelf.age)
//
//var hocsinh:Student = Student(school: "MeSo", level: 9)
//
//hocsinh.AfterOneYear()
//
//print(hocsinh.age, hocsinh.level)
//Practice about Class

//class People {
//    var name:String!
//    var age:Int!
//
//    init(name:String, age:Int) {
//        self.name = name
//        self.age = age
//    }
//
//    func afterOneYear() -> Void {
//        age = age + 1
//    }
//}
//
//var people:People = People(name: "Son", age: 21)
//print (people.name)
//people.afterOneYear()
//people.age
////Tinh thua ke trong class
//
//class Student:People {
//    var school:String!
//    var level:Int!
//    override func afterOneYear() {
//        super.afterOneYear()
//        level = level + 1
//    }
//}
//
//var student:Student = Student(name: "SonDuong", age: 21)
//student.level = 15
//student.school = "HUST"
//
//student.afterOneYear()
//student.age
//student.level
//
//class Animal{
//    var name:String!
//    var age:Int!
//}
//class designated and convenience
//DESIGNATED
//class People{
//    var name:String!
//
//    init(name:String) {
//        self.name = name
//    }
//
//    func sayHello() {
//        print("Hello! I'm \(self.name!)")
//    }
//}
//
//class Student:People{
//    var school:String!
//
//    init(name:String, school:String){
//        self.school = school
//        super.init(name: name)
//    }
//    override func sayHello() {
//        print("Hello!I'm student. I'm learning at \(school!)")
//    }
//}
//
//func printHello(p:People){
//    p.sayHello()
//}
//
//var nguoi:People = People(name:"Son")
//printHello(p: nguoi)
//
//var hocsinh:Student = Student(name: "SOn", school: "HUST")
//printHello(p: hocsinh)
//CONVENIENCE
class Animal{
    
}
protocol CanMakeSound {
    func Sound()
}

protocol CanEat {
    var foodType:String{get set}
    func food(foodType:String)
    init(foodType:String)
}

class Dog:Animal, CanMakeSound, CanEat{
    
    func Sound() {
        print("Gau Gau")
    }
    var foodType: String = "Xuong"
    func food(foodType: String) {
        print(foodType)
    }
    required init(foodType: String) {
        self.foodType = foodType
    }
}

var myDog:Dog = Dog(foodType: "Thit")
myDog.Sound()
myDog.food(foodType: "Xuong")

//practive CLOSURE

let MY_CLOSURE = { (name:String) -> Void in
    print(name)
    print("Hello World")
}

var myClosure = { (name:String) -> Void in
    print("hello")
}

myClosure("Hello")

func testClosure (name:String, closure:(String) -> Void) {
    closure(name)
}

testClosure(name: "Hello", closure: {(name:String) -> Void in print(name)})

let SUM : (Int, Int) -> Int = {
    return $0 + $1
}

SUM(2, 3)
//extension
extension Double {
    var km:Double {return self / 1000}
}

let oneMeter : Double = 1.3

oneMeter.km
