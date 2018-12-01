// Swift 4.2
/*
 작성자 : 김유진
 작성일 : 2018.12.01
 작성범위 : https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html 에서 Strings And Characters
 */

// 문자열 리터럴 : 미리 정의된 문자열을 리터럴 할 수 있다. ("") 큰 따옴표로 표현
let someString = "I'm someString!"
print(someString)

// 여러 줄 문자열 리터럴 : 여러 줄로 문자열을 리터럴 할 수 있다 ("""""") 큰 따옴표 안에 큰 따옴표로 표현
let someStringString = """
abc,
def,
ghi
"""
print(someStringString)

// 문자열 리터럴의 특수 문자 : \0(null),\\(역 슬래시), \t(가로 탭), \n(줄 바꿈), \r(캐리지 리턴), \"(큰 따옴표) 및 \'(작은 따옴표)
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
print(wiseWords)
let dollarSign = "\u{24}"
print(dollarSign)
let blackHeart = "\u{2665}"
print(blackHeart)
let sparklingHeart = "\u{1f496}"
print(sparklingHeart)

// 빈 문자열 초기화 : String긴 문자열 을 만들기위한 시작점으로 빈 값 을 만들려면 빈 문자열 리터럴을 변수에 할당하거나 이니셜 String라이저 구문을 사용 하여 새 인스턴스를 초기화
var emptyString = ""
var anotherEmptyString = String() // 이니셜라이저 구문
if emptyString.isEmpty {
    print("아무런 문자열도 존재하지 않습니다.")
}

// 문자열 뮤터빌리티 : 특정 문자열을 변수에 할당하여 수정(수정할 수 있는 경우)할 수 있는지 상수(수정할 수 없는 경우)에 지정할 수 있는지 여부 표현
var variableString = "Dog"
variableString += " and Cat"
print(variableString) // 특정 문자열이 변수에 할당되므로 수정 가능
let constantString = "Dog"
// constantString += " and Cat"
// print(constantString) // 특정 문자열이 상수에 할당되므로 수정이 불가능

// 문자열과 문자열 연결하기 : 덧셈 연산자(+), 대입 연산자(+=), 문자열 메소드를 사용하여 새로운 문자열을 만든다
var string1 = "Dog"
var string2 = " and Cat"
var dogAndCat = (string1 + string2) // 덧셈 연산자를 사용한 표현식
print(dogAndCat)
var introduce = "Dog"
introduce += string2 // 대입 연산자를 사용한 표현식
print(introduce)
let exclamationMark: Character = "!"
dogAndCat.append(exclamationMark) // 문자열 메소드 StringAppend를 사용한 표현식

// 문자열 보간법 : 상수, 변수, 리터럴 및 식이 혼합된 문자열 값을 문자열 내에 리터럴로 포함시켜 새로운 문자열 값을 구성하는 방법
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(message)

// 문자열 색인
let greeting = "Hello" // greeting 상수에 "hello" 문자열로 초기화
greeting[greeting.startIndex] // greeting 상수에 저장된 문자열 인덱스 0번째 값을 표기
greeting[greeting.index(before: greeting.endIndex)] // greeting 상수에 저장된 문자열 중 마지막 인덱스 이전의 인덱스 값 표기
greeting[greeting.index(after: greeting.startIndex)] // greeting 상수에 저장된 문자열 중 시작점 인덱스 이후의 인덱스 값 표기
let greetingIndex = greeting.index(greeting.startIndex, offsetBy: 4) // greetingIndex는 greeting 상수의 시작 인덱스로부터 4번째 위치의 문자열로 값을 초기화
greeting[greetingIndex] // 결과로 O 출력 offsetBy를 이용하여 인덱스 위치 이동

// 문자열 삽입
var welcome = "Hello"
welcome.insert("!", at: welcome.endIndex) // 하나의 문자를 삽입한다면, at: 지정변수(var name).삽입할 위치(index)
welcome.insert(contentsOf: ", Swift!", at: welcome.endIndex) // 여러 문자를 삽입한다면, contentsOf: ~ at: 지정변수(var name).삽입할 위치(index)

// 문자열 삭제
welcome.remove(at: welcome.index(before: welcome.endIndex)) // 삭제하고 싶은 문자의 위치 선언후 지정변수(var name).remove(at: )

// 문자열 비교
let quotation = "same words?"
let sameQuotation = "same words?"
if (quotation == sameQuotation) {
    print("These two strings are considered equal")
}

// 접두사와 접미사 동일성 : 문자열에 특정 문자열 접두사 또는 접미사가 있는지 확인하려면 문자열의 hasPrefix(_:) 및 hasSuffix(_:) 메서드를 호출
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
var act1SceneCount = 0 // act 1 장면들을 카운트 하기 위한 정수형 변수 선언
for scene in romeoAndJuliet { // romeoAndJuliet 배열에 있는 값들을 하나씩 scene이라는 for문을 위한 변수로 가져온다
    if scene.hasPrefix("Act 1 ") { // 만약 scene.hasPrefix가 act1으로 설정되었다면
        act1SceneCount += 1 // act 1 장면들을 카운트 하기 위한 정수형 변수를 1씩 증가하고
    }
}
print("There are \(act1SceneCount) scenes in Act 1") // act1은 총 몇 장면인지 결과로 출력
var mansionCount = 0 //
var cellCount = 0
for scene in romeoAndJuliet { // romeoAndJuliet 배열에 있는 값들을 하나씩 scene이라는 for문을 위한 변수로 가져온다
    if scene.hasSuffix("Capulet's mansion") { // 만약 scene이 hasSuffix로 설정된 값이면
        mansionCount += 1 // mansionCount를 1씩 증가
    } else if scene.hasSuffix("Friar Lawrence's cell") { // 그렇지 않고 scene이 "Friar Lawrence's cell"이면
        cellCount += 1 // cellCount를 1씩 증가
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes") // 결과 출력
