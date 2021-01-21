import UIKit

struct Point {
    var x: Int
    var y: Int
    
    func describe() {
        print("x: \(x), y: \(y)")
    }
}

let pointA = Point(x: 1, y: 2)
let pointB = Point(x: 3, y: 4)

print("\(pointA.x)")
print("\(pointA.y)")
print("\(pointA.describe())")
