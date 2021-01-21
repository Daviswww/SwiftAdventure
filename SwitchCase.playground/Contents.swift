import UIKit

let caseNum = 2

switch caseNum {
case 0:
    print("Your case number is \(caseNum)")
case 1:
    print("Your case number is \(caseNum)")
case 2:
    print("Your case number is \(caseNum)")
default:
    print("Out of case!")
}


let caseNumNum = 6

switch caseNumNum {
case 0...3:
    print("Your case number is \(caseNumNum)")
case 4...5:
    print("Your case number is \(caseNumNum)")
case 5...7:
    print("Your case number is \(caseNumNum)")
default:
    print("Out of case!")
}
