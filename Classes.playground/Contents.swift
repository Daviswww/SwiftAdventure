import UIKit

class Person {
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}



class Dog {
    var name: String
    var color: String
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
    func Sing() {
        print("dog dog dog!")
    }
}

var myDog = Dog(name: "Kor", color: "blue")
myDog.name
myDog.color
myDog.Sing()


class BigDog: Dog {
    override func Sing() {
        print("BigDog BigDog BigDog")
    }
}

var myBigDog = BigDog(name: "Kor", color: "blue")
myBigDog.name
myBigDog.color
myBigDog.Sing()



@objcMembers class Cat {
    var name: String
    var color: String
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
    func Sing() {
        print("Cat Cat Cat!")
    }
}
