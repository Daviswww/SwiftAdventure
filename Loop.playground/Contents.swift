import UIKit

print("1 x 1 is \(1 * 1)")
print("1 x 2 is \(1 * 2)")
print("1 x 3 is \(1 * 3)")
print("1 x 4 is \(1 * 4)")


for i in 1...4 {
    print("1 x \(i) is \(1 * i)")
}



var temps = ["qwe", "asd", "zxc", "rty"]
for temp in temps {
    print("Hi, \(temp)")
}


var ops = ["qwe", "asd", "zxc", "rty"]
for i in 0..<ops.count {
    print("Hey, \(ops[i])")
}

var count = 5
while count > 0 {
    print("GGLA::\(count)")
    count-=1
}
