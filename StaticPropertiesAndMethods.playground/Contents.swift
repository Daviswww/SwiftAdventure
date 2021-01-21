import UIKit

struct Cat {
    static var favoriteColor = "Red"
    
    var name: String
    var age: Int
}


let myCat = Cat(name: "dodo", age: 12)
print("\(Cat.favoriteColor)")

