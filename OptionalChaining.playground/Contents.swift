import UIKit

func helloYear(year: Int) -> String? {
    switch year {
    case 2020: return "Hello 2020"
    case 2021: return "Hello 2021"
    default: return nil
    }
}

let msg = helloYear(year: 203)
print("\(msg) swift!")


func helloYear2(year: Int) -> String? {
    switch year {
    case 2020: return "Hello 2020"
    case 2021: return "Hello 2021"
    default: return nil
    }
}

let msg2 = helloYear2(year: 203)?.uppercased()
print("\(msg2) swift!")


func helloYear3(year: Int) -> String? {
    switch year {
    case 2020: return "Hello 2020"
    case 2021: return "Hello 2021"
    default: return nil
    }
}

let msg3 = helloYear3(year: 203) ?? "unknown"
print("\(msg3) swift!")
