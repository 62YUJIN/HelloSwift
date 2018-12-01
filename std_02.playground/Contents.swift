// Swift 4.2
/*
 작성자 : 김유진
 작성일 : 2018.11.24
 작성범위 : https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html 에서 Basic Operators
 */

// 단항 연산자 : -a, !a, a! ...

// 바이너리 연산자 : 2 + 3 ...

// 삼항 연산자 : a ? b : c (a이면 b 그렇지 않으면 c)

// 배정 연산자
var a = 1 // a에 1이라는 변수 선언
var b = 2 // b에 2라는 변수 선언
a = b // b를 a에 배정
print(a) // 배정 연산 후에 a의 값은 b의 값으로 초기화

// 산술 연산자 : +, -, *, /, %
var helloSwift = "Hello," + "Swift!"; print(helloSwift) // 문자열 두 개를 + 연산 후 결과 출력

// 복합 할당 연산자
var assignmentValue = 10
assignmentValue += 10; print(assignmentValue) // 처음 값을 10으로 초기화하고, 나중에 +=를 사용하여 10을 할당한 결과
assignmentValue -= 10; print(assignmentValue) // 총 20의 값을 가지고 있던 assignmentValue를 -=를 사용하여 10을 할당한 결과

// 비교 연산자 : Equl to, Not equl to, Greater than, Less than, Greater than or Equl to, Less than or Not equl to
var compareA = 1
var compareB = 2
print(compareA == compareB) // 서로 동등한가의 여부
print(compareA != compareB) // 서로 동등하지 아니한가의 여부
print(compareA > compareB) // 왼쪽이 오른쪽보다 큰가의 여부
print(compareA < compareB) // 왼쪽이 오른쪽보다 작은가의 여부
print(compareA >= compareB) // 왼쪽이 오른쪽보다 크거나 같은가의 여부
print(compareA <= compareB) // 왼쪽이 오른쪽보다 작거나 같은가의 여부

// 삼항 연산자 : 참인지 거짓인지에 따라 두 표현식 중 하나를 리턴하는 연산자
let contentHeight = 40; let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20) // hasHeader가 참이면 50을 반환하고 거짓이면 20을 반환하여 계산
print(rowHeight)

// 무 집착 연산자 : 기본값을 반환화는 경우 사용되며, 표현식은 내부에 저장된 타입과 일치해야함
let defaultColorName = "Red" // 기본 색을 "Red"로 지정
var userDefinedColorName: String? // 기본값이 nil인 선택적 문자열로 정의
var colorNameToUse = userDefinedColorName ?? defaultColorName // 기본값이 nil 이기 떄문에 defaultColorName의 값이 출력될 것임
print(colorNameToUse) // "Red" 출력
userDefinedColorName = "Blue" // nil이 아닌 값을 할당
colorNameToUse = userDefinedColorName ?? defaultColorName // nil 대신 "Blue"를 할당했기 때문에 "Blue"가 출력될 것임
print(colorNameToUse) // "Blue" 출력

// 폐쇄 범위 연산자
for index in 1...5 { // a...b로 정의
    print("\(index) times 5 is \(index * 5)")
}

// 반 개방 범위 연산자
let names = ["Anna", "Alex", "Jhon", "Jack"]
let count = names.count
for i in 0..<count { // a..<b로 정의 (b까지 실행하지 않음)
    print("Person \(i + 1) is called \(names[i])")
}

// 편측 범위 연산자
for name in names[2...] { // 2부터 끝까지
    print(name)
}
for name in names[...3] { // 0 부터 3까지
    print(name)
}
for name in names[..<2] { // 0 부터 1까지
    print(name)
}

// 논리 NOT 연산자 : 부울 값을 반전시켜 참이 거짓이 되고 거짓이 참이 되게 반환하는 연산자
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}

// 논리 AND 연산자 : 두 값이 모두 참이어야 참이 되고, 모두 거짓이면 거짓을 반환하는 연산자
let pressEnterButton = true
let passedTheScene = true
if pressEnterButton && passedTheScene {
    print("Hello, Swift!")
} else {
    print("ACCESS DENIED")
}

// 논리 OR 연산자 : 두 값 중 하나라도 참일 경우 참을 반환하는 연산자
let hasDoorKey = false
let knowOverridePassword = true
if hasDoorKey || knowOverridePassword {
    print("Hello, Swift!")
} else {
    print("ACCESS DENIED")
}

// 논리 조합 연산자 : 여러가지 논리 연산자를 동시에 사용하는 논리 표현식
if pressEnterButton && passedTheScene || hasDoorKey || knowOverridePassword {
    print("Hello, Swift!")
} else {
    print("ACCESS DENIED")
}
