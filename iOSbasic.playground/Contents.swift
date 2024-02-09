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
