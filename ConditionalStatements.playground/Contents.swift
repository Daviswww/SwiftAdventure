import UIKit

var price: Int
var person = "Davis"


if person == "Davis" {
    price = 100
} else if person == "Joy" {
    price = 200
}else {
    price = 0
}



var toolA = true
var toolB = false

if toolA && toolB {
    price = 1000
} else if toolA || toolB {
    price = 2000
}else{
    price = 999
}


var toolC = true
var toolD = false

if toolC && !toolD {
    price = 1000
}else{
    price = 9999
}
