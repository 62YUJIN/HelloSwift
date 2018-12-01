// Swift 4.2
/*
 작성자 : 김유진
 작성일 : 2018.11.24
 작성범위 : https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html 에서 TheBasics
*/

// 상수 및 변수 선언
let sangsu  = 1 // 상수는 let
var byeonsu = 0 // 변수는 var

// 한 줄에 여러개의 상수 및 변수 선언
let sangsu1 = 1, sangsu2 = 2, sangsu3 = 3
var byeonsu1 = 1.0, byeonsu2 = 2.0, byeonsu3 = 3.0 // 변수는 소수점 표기 가능

// 문자열 선언
var helloSwift: String = "Hello" // 타입은 자동으로 설정되나 명시해주는 것이 좋다.

// 상수 및 변수의 값 변경
let helloToGoodbye: String = "Hello"
// helloToGoodbye = "Goodbye" // 상수는 고정된 값이므로 변경 불가능 (ERROR)
var helloToGoodbye2: String = "Hello"
helloToGoodbye2 = "Goodbye" // 변수는 값이 언제나 변할 수 있으므로 변경 가능

// 상수 및 변수 출력
print(helloToGoodbye)
print(helloToGoodbye2)

// 여러 줄의 코드를 한 줄로 작성하기
let cat: String = "🐱"; print(cat) // 세미콜론으로 문장을 연결하면 된다.

// 타입명시를 사용하여 Int, Float, Double, String 선언 후 출력
let integer: Int = 1; print(integer) // 정수로 명시 후 출력
let float: Float = 1.0; print(float) // 실수로 명시 후 출력
let double: Double = 1.0; print(double) // 실수로 명시 후 출력
let string: String = "🐱"; print(string) // 문자열로 명시 후 출력

// 타입 별칭 (typealias) : 기존의 타입을 명시하지 않고 비어있는 상태에서 나중에 따로 별칭을 만들 때 사용
typealias x = Int // x라는 이름의 타입별칭을 Int 타입으로 설정
typealias y = Double // y라는 이름의 타입별칭을 Double 타입으로 설정
typealias z = String // z라는 이름의 타입별칭을 String 타입으로 설정

// 부울 대수 (Bools) : 참과 거짓을 명시하는 것
let catIsTrue = true; print(catIsTrue) // 참은 true로 명시
let dogIsFalse = false; print(dogIsFalse) // 거짓은 false로 명시

// 튜플 (tuples) : 여러 개의 값을 단일 값으로 복합화하는 것
let http404Error = (404, "NotFound"); print(http404Error) // 타입이 동일하지 않아도 된다.

// 튜플 값 분해
let (codeErrorMessage, viewErrorMessage) = http404Error
print("The codeErrorMessage is \(codeErrorMessage)") // codeErrorMessage는 http404Error 튜플의 0번째 값을 참조
print("The viewErrorMessage is \(viewErrorMessage)") // viewErrorMessage는 http404Error 튜플의 1번째 값을 참조

// 인덱스 (Index) 를 사용한 튜플 값 분해
print("The codeErrorMessage is \(http404Error.0)") // http404Error 튜플의 0번째 값을 참조
print("The viewErrorMessage is \(http404Error.1)") // http404Error 튜플의 1번째 값을 참조

// 옵셔널 (Optionals) : 타입이 정해져 있어도 값이 없으면 nil인 것
var optionalValue: Int? = 404
optionalValue = nil
