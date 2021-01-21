# Swift 學習紀錄
## Polymorphism and Typecasting
我們可以先創造一個專輯的類別來定義最基本的屬性，之後我們可以將其他各種專輯繼承專輯這個類別，而當我們創建完後，由於都是屬於專輯的類別，因此可以完美且快速的定義在一起。

```swift
class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
}


var apple = StudioAlbum(name: "Apple", studio: "Pie")
var banana = StudioAlbum(name: "Banana", studio: "ship")
var pear = LiveAlbum(name: "Pear", location: "taiwan")
var allAlbums: [Album] = [apple, banana, pear]
```

我們可以透過定義getPerformance之後再使用override進行修改，之後我們可以快速的將所有的getPerformance快速的列印出來。

```swift
class AlbumGod {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album is \(name)"
    }
}

class StudioAlbumGod: AlbumGod {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The studio album is \(name)"
    }
}

class LiveAlbumGod: AlbumGod {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The live album is \(name)"
    }
}


var appleGod = StudioAlbumGod(name: "Apple", studio: "Pie")
var bananaGod = StudioAlbumGod(name: "Banana", studio: "ship")
var pearGod = LiveAlbumGod(name: "Pear", location: "taiwan")
var allAlbumGods: [AlbumGod] = [appleGod, bananaGod, pearGod]

for albumGod in allAlbumGods {
    print(albumGod.getPerformance())
}
```


## Access control
在創建類別時我們有時候會給屬性一些限制。public意味著每個人都可以在內部讀取和寫入屬性。private只有內部可以使用，也是最嚴格的限制。

```swift
class Cat {
    public var name: String?
    private var age: Int?
}
```

## Static Properties and methods
Static可以讓你創建一個靜態的屬性，他可以快速儲存共享數據，不需要先創建一個類別才能使用。

```swift
struct Cat {
    static var favoriteColor = "Red"
    
    var name: String
    var age: Int
}

let myCat = Cat(name: "dodo", age: 12)
print("\(Cat.favoriteColor)")
```


## Properties
我們可以在struct中設置一些程式，讓他告訴我們修改了什麼資料。而在swift中提供了willSet和didSet兩個可以使用，在willSet中預設的變數名稱是newValue，didSet中預設的變數名稱是oldValue，一個是先做一個是後做，你可以根據你的喜好選則使用。

```swift
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
```

想要對一個變數進行修改的話可以使用get，這將會得到age後進行修改。
```swift
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
```

## Classes
在創建類別後，我們必須初始化程式，將我們的屬性提供值，有幾種可以給定預設的值，一種是直接他們默認的值，或者我們自己寫一個初始化程式，而我們自己寫一個初始化得程式是比較聰明的選擇，init是內建的一個初始化方法，我們可以在裡面初始我們的宣告的屬性等。
```swift
class Person {
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}
```

在這邊我們創造一個狗的類別，這裡面包含他的名字和顏色的訊息，而我們還可以在這個類別寫一個函式狗的聲音，我們可以將著一包類別重複的使用。
```swift
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
```

當我們想要建立更大一個類別時我們可以在創建一個類別，我們可以繼承類別。如果我們想要修改參數的話可以使用`override`。
```swift
class BigDog: Dog {
    override func Sing() {
        print("BigDog BigDog BigDog")
    }
}

var myBigDog = BigDog(name: "Kor", color: "blue")
myBigDog.name
myBigDog.color
myBigDog.Sing()
```


## Structs
`Struct`可以將多個元素包裝再一起，一但創建了結構，就可以通過下面方式讀取對應屬性。
```swift
struct Point {
    var x: Int
    var y: Int
}

let pointA = Point(x: 1, y: 2)
let pointB = Point(x: 3, y: 4)

print("\(pointA.x)")
print("\(pointA.y)")

```

## Enumerations
在使用一些函式的時候，我們有時會會不小心給錯輸入的值而產生粗心的錯誤，有可能大小寫不對、全形半形導致錯誤找了很久才找到，為了避免這個錯誤我們可以使用`enum`先定義好這個輸入的型態，如果在這個型態之外我們就會產生警告，以下是還未使用`enum`時的寫法。
```swift
func getStatusNoEnum(weather: String) -> String? {
    if weather == "sunny" {
        return "Good"
    }else {
        return nil
    }
}
```
使用`enum`後將可以完全的避免掉粗心的錯誤。

```swift
func getStatus(weather: WeatherType) -> String? {
    if weather == WeatherType.sun {
        return "Good"
    }else {
        return nil
    }
}

getHaterStatus(weather: WeatherType.cloud)
```


你還可以將輸入化簡，讓程式碼簡潔乾淨。


```swift
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
```

當然如果你有需要你可以在enum中定義參數的型態，在調用時將會出現你所定義的變數名稱，。
```swift
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
```

## Optional chaining
您可以通過在要調用其屬性的方法或下標的可選值之後放置問號（?）來指定可選，如果可選值不是`nil`即可使用。這非常類似於將感嘆號（!）放在可選值之後以強制展開其值。主要區別在於，問號時會正常失敗`nil`。驚嘆號會強制展開會觸發運行時錯誤`nil`。
```swift
func helloYear(year: Int) -> String? {
    switch year {
    case 2020: return "Hello 2020"
    case 2021: return "Hello 2021"
    default: return nil
    }
}

let msg = helloYear(year: 2020)
print("\(msg) swift!")
```

如果我們要再回傳回來的參數後面使用一些函式來改變參數的時候，我們可以加上`?`來確保是否有參數可以調用，如果是`nil`將會出現錯誤訊息。

```swift
func helloYear2(year: Int) -> String? {
    switch year {
    case 2020: return "Hello 2020"
    case 2021: return "Hello 2021"
    default: return nil
    }
}

let msg2 = helloYear2(year: 203)?.uppercased()
print("\(msg2) swift!")
```

如果想讓程式碼更加的安全，可以在後面加上`??`，當參數為`nil`時，將會使用`??`後面所設置的參數。


```swift
func helloYear2(year: Int) -> String? {
    switch year {
    case 2020: return "Hello 2020"
    case 2021: return "Hello 2021"
    default: return nil
    }
}

let msg2 = helloYear2(year: 203) ?? "unknown"
print("\(msg2) swift!")
```

## Optionals
如果在不知道可選的元素是什麼的情形下，我們可以利用?來代表有可能是空的值，接著我們利用if let 的方式判斷，如果是nil就會跳掉else。

```swift
func myNameIs(name: String) -> String? {
    if name == "joy" {
        return nil
    } else {
        return "Good"
    }
}

var s : String?
s = myNameIs(name: "davis")

if let a = myNameIs(name: "davis") {
    print("\(a)")
} else {
    print("Is nil!!")
}
```




## Functions
函式可以幫助你將程式的區塊給打包，打包後的程式你可以重複使用，可以增加可讀性與簡潔等。
```swift
func myfunc() {
    print("I like func!!")
}
myfunc()
```
由於函式中的變數與主程式中的變數是分開的，因為在每個區域都有自己的變數，因此我們可以把變數傳入函式中來取的外部的變數。
```swift
func myProfilefunc(name: String, age: Int) {
    print("My name is \(name), age is \(age)!!")
}
myProfilefunc(name: "Davis", age: 22)
```

在變數宣告中我們可以改變輸入的名稱，前面的變數代表外面使得這個函式所使用的名稱，後面的則是函式內所使用的名稱。而第二種方法則是給他一個底線，這個底線代表任何，所以外面也不需要輸入變數名稱。

```
func myProfilefunc(myName name: String, myAge age: Int) {
    print("My name is \(name), age is \(age)!!")
}
myProfilefunc(myName: "Emily", myAge: 20)

func myProfilefunc(_ name: String, _ age: Int) {
    print("My name is \(name), age is \(age)!!")
}
myProfilefunc("Joy", 13)
```

在函式中我們有時候必須將計算完的變數回傳回主程式，就如我們剛剛所說過的每個區域都有自己的變數，因此主程式並不會拿到函式中的變數。

```swift
func piArea(r: Float) -> Float {
    let pi: Float = 3.14
    
    return pi * r * r
}

print("Area: \(piArea(r: 3))")
```

## Switch Case
在判斷中switch可以判斷你給他的一個變量做對應的case，當他完成後他會退出那個case得區塊。
```swift
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
```

也可以在case中設置一個範圍來，只要在範圍中的都屬於那個case。
```swift
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

```

## Loop
迴圈是為了解決重複的事情時所建構的，我們可以簡單地使用迴圈來幫助我們減少程式碼中重複的動作。例如我們可以將下面的重複動作簡化成一個簡單的回圈。

未使用回圈：
```swift
print("1 x 1 is \(1 * 1)")
print("1 x 2 is \(1 * 2)")
print("1 x 3 is \(1 * 3)")
print("1 x 4 is \(1 * 4)")
```
使用回圈後：

```swift
for i in 1...4 {
    print("1 x \(i) is \(1 * i)")
}
```

除了自己設定回圈範圍外，我們可以將資料放入設置迴圈數的地放，而temp則會逐一顯示出陣列中的內容。

```swift
var temps = ["qwe", "asd", "zxc", "rty"]
for temp in temps {
    print("Hi, \(temp)")
}
```

如果想要指定一個陣列的範圍可以使用count來得知他的數量。
```swift
var ops = ["qwe", "asd", "zxc", "rty"]
for i in 0..<ops.count {
    print("Hey, \(ops[i])")
}
```
除了上敘的for迴圈外我們還可以使用while。

```swift
var count = 5
while count > 0 {
    print("GGLA::\(count)")
    count-=1
}
```

## Conditional statements
可以利用if else 來判斷變數，而在if後面的判斷中永遠只檢查是否是對的，而大括弧內的則是判斷通過條件後所執行的程式碼，你可以在裡面寫下任何想要執行的程式。
```swift
var price: String
var person = "Davis"


if person == "Davis" {
    price = "100"
} else if person == "Joy" {
    price = "200"
}
```

如果想要多個判斷的話我們可以使用&&和||，&&代表兩邊的成立，||則代表只要有一邊成立就成立。
```swift
var toolA = true
var toolB = false

if toolA && toolB {
    price = 1000
} else if toolA || toolB {
    price = 2000
}else{
    price = 999
}
```
我們還可以使用!來將原本的變數變成相反的。
```swift
var toolC = true
var toolD = false

if toolC && !toolD {
    price = 1000
}else{
    price = 9999
}
```


## Dictionaries
在字典中你可以利用一個key來存放一個value，當你使用到key時會就印出value。

```swift
var age = ["Davis": 25, "Joy": 22, "Emily": 12]

age["Davis"]
```


## Arrays
陣列的宣告可以使的一個變數中可以儲存許多個資料，但這邊要注意的一點是資料中的型態必須要是一致的否則會出現錯誤，還有在陣列中第一個資料是從0開始計算，如下為例aryNumbers[0]就會得到2。
```swift
var aryNumbers = [2, 4, 6, 8]
aryNumbers[0]
aryNumbers[3]

var aryString = ["ABC", "DEF", "GGG"]
aryString[0]
```

如果想要儲存更多的資料可以利用append來加入新的資料。
```swift
var temp = [String]()
temp.append("Hello")
```


## String Interpolation

字串的可以有很多種變化，我們可以宣告一個字串後利用運算符加上新的字串，我們也可以用括號`\()`來把變數放入字串中。
```swift
var str = "Hello, playground"
str + " hello1"
str += " hello2"

var age = 25
var myAge = "My age is \(age)"
```

## Operators
宣告變數利用運算符進行運算。
```swift
var a = 1
var b = 2
var c = a + b

c > 3
c < 3
c >= 3
c <= 3
c == 3

var isTrue = true
!isTrue
```


## Type of data
類型的宣吿可以使變數擁有一個型態，swift會根據創建時給定的型態來做分配。下面會介紹幾種型態，並做一些範例來讓你更了解。


`str`存的是字串，你可以輸入多個文字。
```swift
var name: String
name = "Davis"
```

`int`存的的是一個正整數。
```swift
var age: Int
age = 26
```

`float`和`double`分別為短的浮點數和長的浮點數，可以由輸出中看到`float`和`double`印出來的浮點數數量發現他們的差別。

```swift
var pi: Float
pi = 3.14159265359

var longpi: Double
longpi = 3.14159265359
```

`bool`只能存在`true`或是`false`。
```swift
var isTrue: Bool
isTrue = true
isTrue = false
```

## Variables and constants
宣告一個變數，使用var用此宣告的變數可以任意更改裡面存的值。

```swift
var name = "Davis"
name = "John"
```

若不允許修改值可使用let，注意使用let後若進行修改，則會發生錯誤。所以這個變數如果不會被修改的話，建議使用let來進行宣告。

```swift
let name = "Davis"
```
