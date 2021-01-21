import UIKit

enum WeatherType {
    case sun, cloud, rain, wind, snow
}

func getStatusNoEnum(weather: String) -> String? {
    if weather == "sunny" {
        return "Good"
    }else {
        return nil
    }
}


func getStatus(weather: WeatherType) -> String? {
    if weather == WeatherType.sun {
        return "Good"
    }else {
        return nil
    }
}

getStatus(weather: WeatherType.cloud)


func getStatusSwitch(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return "Sun!"
    case .cloud:
        return "Cloud"
    default:
        return nil
    }
}

getStatusSwitch(weather: .cloud)



enum speedType {
    case one
    case two
    case three(speed: Int)
}

func getStatusSpeed(speed: speedType) -> String? {
    switch speed {
    case .one:
        return "one!"
    case .two:
        return "two!"
    case .three(let speed) where speed > 10:
        return "three > 10"
    case .three(let speed) where speed < 10:
        return "three < 10"
    default:
        return nil
    }
}


getStatusSpeed(speed: .three(speed: 11))
