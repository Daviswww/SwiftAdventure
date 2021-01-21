import UIKit

func myNameIs(name: String) -> String? {
    if name == "davis" {
        return "Good"
    } else {
        return nil
    }
}

var s : String?
s = myNameIs(name: "davis")


if let a = myNameIs(name: "ddd") {
    print("\(a)")
} else {
    print("Is nil!!")
}
