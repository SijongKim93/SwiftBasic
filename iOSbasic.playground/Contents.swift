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


