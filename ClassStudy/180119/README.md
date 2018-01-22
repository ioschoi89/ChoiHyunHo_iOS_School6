Collection Type
================

### Collection Type
 - 배열, 집합, 사전 기본형식을 제공 
 - 변수 (var)에 할당하면 collection을 변경 가능하다. 추가, 제거, 수정 가능 
 - 상수 (let)에 할당하면 변경 불가

### 배열(Array)
 - 번호(인덱스)와 번호에 대응하는 데이터들로 이루어진 자료구조
 - 일반적으로 같은 종류의 데이터들이 순차적으로 저장 
 - 값의 번호가 곧 배열의 시작점으로 부터 값이 저장되어 있는 상대적인 위치가 된다.
 - Any 사용 하면 다른타입도 넣을 수 있지만 굳이 활용하는 경우는 많지 않음

### Array 기본 문법
 - Array<Element>로 Array Type을 나타낸다
 - Element는 배열에 저장할 수 있는 타입이다
 - 축약 문법으로 [Element]로 표현 할 수 있다.
 - var someInts:[Int] = [Int]( ) 
 
##### 배열 리터럴 : [값 1, 값 2, 값 3]
 - var someInts:[Int] =[1,2,3,4]
   someInts = [ ]
 - index를 통해 배열의 값을 가져올수있다, 0 부터 시작
배열의 추가기능 : elements 갯수, 빈배열 확인, element 추가,삽입,삭제
 - shift + command + o.  Or ctrl + command 클릭


### Set
 - 순서와 중복이 없는 자료구조
 - 데이터가 유일하게 하나씩 담겨있다.
 - var someInts: Set<Int> = Set<Int>( )
 - 리터럴 사용 
 - 타입을 지정하지않으면 array, 지정해주면 set
 - Array 처럼 하나씩 꺼낼수 있는 방법은 없다. -> for - in 문을 통해서 데이터를 가져옴
 - set을 정렬하면 리턴값은 array
 - set의 기능 :  교집합, 교집합의 여집합, 합집합, 차집합

### Dictionary
 - 순서가 정해져 있지 않은 데이터에 키값을 통해 구분할 수 있는 자료구조
 - 항목의 순서가 중요치 않고 key값을 통해서 데이터를 접근할 때 사용.
 - 축약 문법 : [key: value] 
 - 일반적으로 key는 string
 - var airports: [String: String] = [“ICH”: “인천공항”, “CJU” : “제주공항”]
 - Down Casting : any타입에서 내가 원하는 타입으로 캐스팅 하는 경우를 다운캐스팅이라
                             하며 as 키워드를 사용.  [ 값 as! 타입 ]
 - for 문 이용해서 데이터 꺼낼때 튜플 이용!!!

