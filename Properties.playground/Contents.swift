import UIKit

struct Person {
    var clothes: String {
        willSet {
            update(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            update(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func update(msg: String) {
    print(msg)
}


var k = Person(clothes:  "T-shirts")
k.clothes = "K-shirts"


struct Cat {
    var age: Int
    
    var ageInPersonYears: Int {
        get {
            return age * 7
        }
    }
}


var cat = Cat(age: 12)

cat.age
cat.ageInPersonYears

