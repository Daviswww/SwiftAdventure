import UIKit

func myfunc() {
    print("I like func!!")
}
myfunc()

func myProfilefunc(name: String, age: Int) {
    print("My name is \(name), age is \(age)!!")
}
myProfilefunc(name: "Davis", age: 22)

func myProfilefunc(myName name: String, myAge age: Int) {
    print("My name is \(name), age is \(age)!!")
}
myProfilefunc(myName: "Emily", myAge: 20)

func myProfilefunc(_ name: String, _ age: Int) {
    print("My name is \(name), age is \(age)!!")
}
myProfilefunc("Joy", 13)


func piArea(r: Float) -> Float {
    let pi: Float = 3.14
    
    return pi * r * r
}

print("Area: \(piArea(r: 3))")
