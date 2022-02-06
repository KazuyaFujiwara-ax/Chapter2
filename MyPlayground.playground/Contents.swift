import UIKit

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
