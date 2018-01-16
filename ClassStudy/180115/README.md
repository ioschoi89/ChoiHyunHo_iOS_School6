변수와 함수
================

###명명규칙
 - 시스템 예약어는 사용할 수 없다.
 - 숫자는 이름으로 시작될 수는 없지만 이름에 포함될 수 있다.
 - 공백을 포함할 수 없다.
 - 변수&함수명은 lowerCamelCase, 클래스&타입명은 UpperCamelCase

###변수명
 - swift는 유니코드 지원으로 모든 문자 표현 가능(다른 언어는 아스키코드라 영어만 가능)
 - 기본형 : Int, Double, String, Bool
 - 참조형 : ClassName

* Int : +/- 부호를 포함한 정수이다.
* Uint : - 부호를 포함하지 않은 (0 포함) 정수
* Int.max(min) - > 최대값 최소값 알수있음
* Bool(불리언 타임) - 실제값은 true or false, !true = false, &&(and), ||(or) 
* Double&Float : 부동 소수점을 사용하는 실수형 타입
* Character : 단어나 문장이 아닌 문자 하나,  string은 character의 모음
* String : 문자의 나열, 문자열,문자열을 character로 분해하여 꺼낼 수 있다.
 - String 병합 : + 기호 사용가능 , 삽입  : \(내용)
 - SubString : String을 나누면 SubString타입으로 반환된다.



* 튜플
 - 정해지지 않은 데이터 타입의 묶음
 - 소괄호 () 안에 타입을 묶음으로 새로운 튜플 타입을 만들 수 있다.
 - 각 타입마다 이름을 지정해 줄 수도 있다.
 - var sampleTuple: (Int, Int) = (3, 4)

* Any, AnyObject, nil

* 캐스팅 (형변환)
 - 캐스팅 할 Type(캐스팅할 변수)

* 함수
 - 매개변수는 디폴트값을 설정할 수 있다.
 - 매개변수로 값이 들어오지 않을때 디폴트값이 사용된다.
 - inout 명령어 :  기본적으로 매개변수는 상수값이지만, inout  키워드를 사용하 (다시한번 보기)
