import UIKit


//   ** 조건문 **
var isDarkMode : Bool = true

if isDarkMode == true {
    print("다크모드 입니다.")
} else {

    print("다크모드가 아닙니다.")
}

var title: String = !isDarkMode == true ? "다크모드 입니다." : "다크모드가 아닙니다."

print("title: \(title)")

 
// ** for 문 **

// 콜렉션 : 데이터를 모아둔 것
// 배열, 셋, 딕셔너리, 튜플
// 배열

var myArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for item in myArray where item > 5 {
    print("item: \(item)")
}
// where 를 사용하여 특정한 조건을 넣을 수 있다. item 안에 5보다 큰 수만 넣겠다 라는 뜻

for item in myArray where item % 2 == 0 {
    print("짝수: \(item)")
}
// item을 2로 나눴을때 나머지가 0인 수 (짝수)만 출력

for item in myArray where item % 2 != 0 {
    print("홀수: \(item)")
}
// item을 2로 나눴을때 나머지가 0이 아닌 수(홀수)만 출력


// ** enum **
// 경우(타입)을 나눈다.

enum School {
    case elementary
    case middle
    case high
}
// 위 식과 같은 표현
// enum School {
//    case elementary, middle, high
// }


let yourSchool = School.high
print("yourSchool: \(yourSchool)")

enum Grade: Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade : \(yourGrade.rawValue)")

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "김시종 중학교")
print(yourMiddleSchoolName)


// ** for 반복문 **

// range
// 0...5
// 0,1,2,3,4,5

// 0..<5
// 0,1,2,3,4

for index in 0..<5 {
    print("호호 index: \(index)")
}

//반복을 뜻하는 iterate 때문에 i로 쓰는게 일반적

for index in 0...5 where index % 2 == 0 {
    print("호호 짝수 index: \(index)")
}


var randomInts: [Int] = []
// var randomInts: [Int] = [Int]()

for _ in 0..<25 {
    let randomnumber = Int.random(in: 0...100)
    randomInts.append(randomnumber)
}
// i 는 사용하지 않으면 _ 로 쓰면 된다.

print(randomInts)

// ** optional , unwrapp **

// optional 이란?
// 값이 있는지 없는지 모른다.

var someVariable: Int? = nil

if someVariable == nil {
    someVariable = 90
}

print("someVariable: ", someVariable)

// unwrapp 이란? 랩 즉 감싸져있는 것을 벗기는 것 (옵셔널을 벗기는 것)

if let otherVariable = someVariable {
    print("언래핑 되었다. 즉 값이 있다. otherVariable: \(otherVariable)")
} else {
    print("값이 없다.")
}

someVariable = nil

// someVariable 이 비어있으면, 즉 값이 없으면 기본값으로 밑에 값을 넣겠다.

let myValue = someVariable ?? 10
print("myValue: \(myValue)")




func unwrap(_ parameter: Int?){
    print("unwrap() called")
    //값이 없으면 리턴 해버린다.
    //즉 지나간다.
    guard let unWrappedParam = parameter else {
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
}

// ** property observer

var myAge = 0 {
    willSet {
        print("값이 설정될 예정이다. myAge: \(myAge)")
    }
    didSet {
        print("값이 설정되었다. myAge: \(myAge)")
    }
}

myAge = 10
myAge = 20


// 함수, 메소드 정의
func myFuntion(name: String) -> String {
    return "안녕하세요? \(name) 입니다."
}

// 함수, 메소드를 호출한다.
myFuntion(name: "김시종")


// 함수, 메소드 정의 2
func myFuntionSecond(with name: String) -> String {
    return "안녕하세요? \(name) 입니다."
}

myFuntionSecond(with: "호롤로롤")


func myFuntionThird(_ name: String) -> String {
    return "안녕하세요? \(name) 입니다."
}

//Strings and Characters

let s = "Hello, World"

// swift 에는 두가지 String Type 이 있다.

var nsstr: NSString = "str"
let swiftstr: String = nsstr as String
nsstr = swiftstr as NSString

// Mutability
var str = "Hello"
str.append("Swift")
// 문자의 가변성은 let , var 로 결정되며 let은 수정할 수 없다.


// Character Type
let c: Character = "C"
// 문자 타입으로 처리하고 싶다면 반드시 캐릭터 타입으로 설정해야한다.

var str = "12.34KB"

let size = 56.78
str = String(size) + "KB"
str = "\(size)KB"

// 플레이스 홀더를 활용하여 간결한 문장을 만들 수 있다.
// 타입 컨버젼이 별도로 필요하지 않고 편리함

// 다만 포멧을 세부적으로 정할 순 없다.

//Format Specifier

String(format: "%.5fKB", size)
String(format: "Hello, %@", "Swift")
String(format: "%d", 12)
String(format: "%.3f", 12.34)

String(format: "[%d]", 123)
String(format: "[%10d]", 123)
String(format: "[%-10d]", 123)
String(format: "[%-10d]%%", 123)

//Escape Sequence
str = "\\"
// \ 하나만 출력됨

print("A\tB")
// t 는 탭이므로 문자열에 탭이 추가됨
print("A\nB")
// n 은 줄바꿈으로 문자열이 줄바꿈됨
print("\"Hello\" he said.")

"""
\"Hello\" he said.
"""

// Extended String Delimeters
#"\"Hello\" he said."#
// #은 \와 " 를 문자그대로 출력함
// #의 갯수를 맞춰 사용해야한다.

let value = 123
print(#"The value is \#(value)"#)

let multiline = #"""
"Multiline"
String
Literal
"""#

// String Indices

let str = "Swift"
str.startIndex

let firstCh = str[str.startIndex]
print(firstCh)

let lastCharIndex = str.index(before: str.endIndex)   //endIndex 는 마지막 문자의 다음 문자
let lastCh = str[lastCharIndex]
print(lastCh) 


//String Basics

var str = "Hello, Swift String"
var emptyStr = ""
emptyStr = String()

let a = String(true)
let b = String(12)
let c = String(12.34)
let d = String(str)

let hex = String(123, radix: 16)

let repeatStr = String(repeating: "👍", count: 7)

let clap = "\u{1f44f}"

let e = "\(a) \(b)"
let f = a + b

str += "!!"

str.count
str.count == 0
str.isEmpty

str == "Apple"
"apple" != "Apple"

"apple" < "Apple"
// 아스키 코드

str.lowercased()
str.uppercased()
str.capitalized

for char in "Hello" {
    print(char)
}

let num = "1234567890"
num.randomElement()

num.shuffled()

//Comparing Strings

let bigA = "Apple"
let smallA = "apple"
let b = "Banana"

bigA == smallA
bigA != smallA

bigA < smallA

("A" as Character).asciiValue
("a" as Character).asciiValue

bigA < b

bigA.compare(smallA) == .orderedSame
bigA.caseInsensitiveCompare(smallA) == .orderedSame

bigA.compare(smallA, options: [.caseInsensitive])
== .orderedSame

// Finding Substrings
let str = "Hello, Swift"
str.contains("Swift")
// .contains("Swift") 는 str 안에 "Swift" 가 포함되어있는지 Bool 값으로 표현해준다.

str.lowercased().contains("swift")
// str 안에 String값을 모두 소문자로 변경한 후 "swift"가 있는지 확인하는 방법이다. -> true

str.range(of: "swift", options: [.caseInsensitive])

let str2 = "Hello, Programming"
let str3 = str2.lowercased()

var common = str.commonPrefix(with: str2)
common = str.commonPrefix(with: str3, options: [.caseInsensitive])

// Collection
// ** Array , Dictionary , Set

// 배열의 특징
 
// Array

let numArray = [1, 2, 3]
// [Int] 와 같이 [] 로 감싸져 있으면 배열
let multiArray = [[1, 2, 3], [1, 2, 3]]

// Array Type

let strArray: Array<String>
let strArray2: [String]
// 둘은 같은 문법이므로 선택해서 사용하면 되나 , 2번째 단축문법을 더 많이 사용함

let nums = [1, 2, 3]
let emptyArray: [Int] = []
let emptyArray2 = Array<Int>()
let emptyArray3 = [Int]()
// 배열은 타입이 매우 중요한데 설정하지 않고 빈공간으로 남겨두면 컴파일 에러가 발생한다.
// 그렇기 때문에 타입을 판단할 수 있는 값이 없는 경우, 타입을 꼭 설정해줘야한다. (위 3가지 방법 중 한가지를 선택해 사용할 수 있다.)

let zeroArray = [Int](repeating: 0, count: 10)
// repeating = 채울값 , count = 채울 갯수
// 0으로 채울때

// 배열의 갯수
nums.count
nums.count == 0
nums.isEmpty
emptyArray.isEmpty

// 요소에 접근하는 법
let fruits = ["Apple", "Banana", "Melon"]
fruits[0]
fruits[2]
fruits[0...1]

// 잘못된 인덱스를 전달하면 오류가 발생

fruits[fruits.startIndex]
fruits[fruits.index(before: fruits.endIndex)]
// 인덱스를 숫자로 불러올 경우 인덱스의 갯수를 파악 하지 못해 오류가 발생 할 수 있다.
// 위와 같이 명령어를 사용하여 더욱 안전하게 불러올 수 있다.
// 마지막 인덱스의 경우 .endIndex 는 마지막의 다음 인덱스를 불러오는 명령어로 오류가 발생한다.
// 그렇기 때문에 .endIndex의 이전을 불러오는 .index(before: fruits.endIndex) 로 마지막 인덱스를 호출해야한다.

fruits.first
fruits.last
// 가장 쉽고 안전하게 인덱스를 불러올 수 있는 방법


let list = ["A", "B", "C", "D", "E"]
list[0...2]
list[2...]
list[...2]

list.prefix(3)
// A , B , C
list.prefix(30)
// 최대 갯수가 30이기 때문에 그전까지는 모두 출력
list.prefix(upTo: 3)
list.prefix(through: 3)
// through 는 인덱스까지 포함

let r = list.prefix { $0 != "C" }
r

list.suffix(3)
list.suffix(from: 3)

상수와 변수 출력 (Printing Constants and Variables)
print(_:separator:terminator:) 함수로 상수 또는 변수의 현재 값을 출력할 수 있습니다:
print(friendlyWelcome)
// Prints "Bonjour!"
print(_:separator:terminator:) 함수는 하나 또는 그 이상의 값을 적절하게 출력하는 전역 함수입니다. 예를 들어 Xcode에서 print(_:separator:terminator:) 함수는 Xcode "콘솔 (console)" 창에 결과를 출력합니다. separator 와 terminator 파라미터는 기본 값을 가지고 있으므로 함수를 호출할 때 생략할 수 있습니다. 
