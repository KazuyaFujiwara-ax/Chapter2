import UIKit
import Foundation

//print test
var greeting: String = "Hello, playground"
1+2
print(greeting)

var apple: Int = 6
print("りんごが\(apple)個")
//¥と\が違う文字って、嘘だろ？


//Int type
let imax: Int = Int.max
let imin: Int = Int.min

print("INT_MAX: \(imax)\nINT_MIN: \(imin)")


//array
var nums: [Int] = [1, 2, 3, 6]
nums[0]
nums[1]
nums[2]
nums[3]


//dictionary type
var dict: [String:String] = ["Mac":"Apple","Windows":"Microsoft"]
dict["iOS"] = "Apple"

dict["Mac"]
dict["Windows"]
dict["iOS"]


//Optional type, unwrap
var opStr : String?
opStr = "not nil"

if let unwrappedStr = opStr {
    print(unwrappedStr)
}


//func
func myFunc(str: String) -> Int {
    let resultValue: Int = str.utf8.count
    return resultValue
}


//throw
enum MyError: Error {
    case InvalidValue
}

func squareRoot(num: Double) throws -> Double {
    if num < 0 {
        throw MyError.InvalidValue
    }
    return sqrt(num)
}

do {
    defer {
        print ("処理終了時間: \(Date())")
    }
    print ("処理開始時間: \(Date())")
    let sqrtResultValue: Double = try squareRoot(num: 6)
    print("結果: \(sqrtResultValue)")
} catch MyError.InvalidValue {
    print("エラー発生")
}


//class
var radio = UISwitch()
radio.isOn = true
radio.setOn(false, animated: false)

class Dog {
    var name = ""
    
    func bark() {
        print("meow")
    }
}

var dog = Dog()
dog.name = "doggo"
dog.bark()

class GuideDog: Dog {
    override func bark() {
        super.bark()
        print("Go straight!")
    }
}

var guideDog = GuideDog()
guideDog.bark()


//struct
struct MyStruct {
    var str: String?
    func method(num: Int) -> Int {
        let result: Int = 0
        return result
    }
}


//enum
enum Fruit {
    case Apple
    case Orange
}


//tuple, for , if, switch
func requestMinAndMax(_ nums: [Int]) -> (min: Int, max: Int) {
    var min: Int = nums[0]
    var max: Int = nums[0]
    
    for num in nums {
        if min > num {
            min = num
        }
        if max < num {
            max = num
        }
    }
    return (min, max)
}

let minAndMax = requestMinAndMax([24, 16, 42, 108, 6, 18])
minAndMax.min
minAndMax.max
for i in 0..<6 {
    print(i)
}
for (i, n) in nums.enumerated() {
    print("\(i): \(n)")
}

let num = 6
switch num {
case 0..<6:
    print("value: 0..<6")
case 6:
    print("value: 6")
case 7...100:
    print("value: 7...100")
default:
    print("default")
}

let fruit = Fruit.Orange
switch fruit {
case .Orange:
    print("Orange")
case .Apple:
    print("Apple")
}


//guard
func buyItem(myMoney: Int?) {
    guard let money = myMoney else {
        print("guard")
        return
    }
    print("\(money)円")
}
var money: Int?
buyItem(myMoney: money)
money = 100
buyItem(myMoney: money)


//filter,map,reduce
var values: [Int] = [24, 16, 42, 108, 6, 18]
print(values.filter {$0 < 20})
print(values.map {$0 * 2})
print(values.reduce(0) {$0 + $1})
print(values)
values.sort{$0 > $1}
print(values)
values.sort{$0 < $1}
print(values)


//where,for-case
for i in 0...6 where i != 5 {
    print("index: \(i)")
}

let value: String = "Orange"
switch value {
case let x where x.hasPrefix("O"):
    print("start with 'O'")
case "Apple":
    print("Apple")
default:
    print("default")
}

let fruits: [Fruit] = [.Apple, .Orange, .Orange, .Apple, .Orange]
for case .Apple in fruits {
    print("It's Apple")
}
