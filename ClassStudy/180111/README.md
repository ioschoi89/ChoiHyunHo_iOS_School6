swift 기초문법-01
====================
### 변수 : 프로그램에서 데이터의 저장공간
 
 - 선언 형식 : 키워드 변수명: 변수타입 = 값
 - ex) var vName: Any = "value"
 - swift에서 변수명의 첫글자는 lower camel case규칙 따름
 - type은 upper camel case 규칙을 따름
 - = : 대입연산자로 값을 변수에 저장한다는 뜻이다.
 - 변수의 Type : Int(정수형), String(문자열), Double(실수형)

### 함수 : 프로그램이 실행되는 행동(기능)을 담당
 - 선언 형식 : func vName(parameter: type)->return type{//함수내용}  
 - 리턴값은 항상 하나이며 리턴 타입에대한 제한은 없다.

### 클래스
 - 선언 형식 : class className{//변수 및 함수 선언}
 - 클래스 사용하기 (Person이라는 클래스를 만들었을 때)
  1. var person1: Person = Person()
  2. person1.함수명 으로 호출
 - 클래스 자체가 타입이 되기 때문에 type 명명 규칙과 같이 upper camel case 규칙을 따름

### 주석달기
 - 컴파일러가 인식할수 없는 텍스트
 - 메모 및 설명을 작성하는 용도
 - 일정 영역의 코드 비활성화
 - //주석 : 라인 주석처리
  - 단축키 : command + / 
 - /* 주석 */ : 여러줄 주석처리
 - Quik help : Option + Command + /
  - 외부에서 보기 쉽게 내용 담을 수 있는 방법 
      