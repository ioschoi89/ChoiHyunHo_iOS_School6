//
//  ViewController.swift
//  Examif
//
//  Created by choi hyunho on 2018. 1. 17..
//  Copyright © 2018년 choi hyunho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //<if>
        //정수를 하나 입력받아 그 수가 짝수이면 true를  반환하는 함수
        func evenNum(about num1: Int) -> String {
            var checkNum: String = "짝홀"
            if num1 % 2 == 0
            {
                checkNum = "true"
            }else
            {
                checkNum = "false"
            }
            return checkNum
        }
        print(evenNum(about: 70))
        
        //문자열 두개를 입력받아 두 문자열이 같으면 true를 반환해주는 함수
        func checkString(between str1: String, between str2: String) -> String
        {
            var checkBt: String = "비교"
            if str1 == str2
            {
                checkBt = "true"
            }else
            {
                checkBt = "false"
            }
            return checkBt
        }
        print(checkString(between: "ironman", between: "ironman"))
        //두 수를 입력받아 큰 수를 반환하는 함수를 작성하세요
        
        func checkTwoNum(between num2: Int, between num3 : Int) -> String
        {
            var bNum: String = "큰수"
            
            if num2 > num3
            {
                bNum = String(num2)
            }else if num3 > num2
            {
                bNum = String(num3)
            }else
            {
                bNum = " 두 수는 같은 수 입니다 "
            }
            return bNum
        }
        print(checkTwoNum(between: 10, between: 9))
        print(checkTwoNum(between: 9, between: 9))
        //정수를 하나 입력받아 3의 배수이면 true를 반환해주는 함수
        func checkMultiple(about num4 : Int) -> String
        {
            var checkThree: String = "3배수 check입니다"
            if num4 % 3 == 0
            {
                checkThree = "3의 배수입니다"
            }else
            {
                checkThree = "3의 배수가 아닙니다."
            }
            return checkThree
        }
        print(checkMultiple(about: 7))
        print(checkMultiple(about: 9))
        // 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수 (첫번째 값을 두번째 값으로 나눈다. 0으로 나누기를 할시 0을 반환)
        func divide(of num5: Int, of num6: Int) ->Int
        {
            let divideNum: Int = num5 / num6
            return divideNum
        }
        print(divide(of: 12, of: 4))
        //응용
        //시험점수를 입력받아 대학교 grade로 나눠서 반환해주는 함수 (ex: 95 >>> "A+"  /// 80 >>> "B")
        func grade(of score: Int) -> String
        {
            var scoreGrade: String = "등급"
            if score >= 95 && score <= 100
            {
                scoreGrade = "a+"
                
            }else if score >= 90 && score < 95
            {
                scoreGrade = "a"
                
                
            }else if score >= 85 && score < 90
            {
                scoreGrade = "b+"
                
            }else if score >= 80 && score < 85
            {
                scoreGrade = "b"
                
            }else if score >= 75 && score < 80
            {
                scoreGrade = "c+"
                
            }else{
                scoreGrade = "낙제입니다."
                
            }
            let printGrade: String = "당신의 등급은" + scoreGrade + "입니다"
            return printGrade
        }
        
        print(grade(of : 99))
        
        
        func checkGrade(of chkGrade: String) ->  Double
        {
            var pointGrade: Double = 0.0
            if chkGrade == "a+"
            {
                pointGrade = 4.5
            }else if chkGrade == "a"
            {
                pointGrade = 4.0
            }else if chkGrade == "b+"
            {
                pointGrade = 3.5
            }else if chkGrade == "b"
            {
                pointGrade = 3.0
            }else if chkGrade == "c+"
            {
                pointGrade = 2.5
            }else
            {
                pointGrade = 0.0
            }
            return pointGrade
        }
        func average(grade1: String, grade2: String) ->Double
        {
            let grade11: Double = checkGrade(of: grade1)
            let grade22: Double = checkGrade(of: grade2)
            let averageGrade: Double = (grade11 + grade22) / 2
            return averageGrade
        }
        print(average(grade1: "a+", grade2: "b+"))
        //윤년 구하기 문제(년도를 받아서 윤년인지 아닌지 판단하는 함수) ->4로 나누어떨어지는 해는 윤년, 100의 배수이면 윤년이 아니지만, 400의 배수이면 윤년
        func calender(year: Int) -> String
        {
            var chkYear: String = "판별"
            if (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0){
                chkYear = "윤년입니다"
            }else
            {
                chkYear = "윤년이 아닙니다"
            }
            
            
            return chkYear
        }
        print(calender(year: 2004))
        print(calender(year: 1990))
        print(calender(year: 2017))
        print(calender(year: 2012))
        
        //세 수를 입력받아 그 곱이 양수이면 true, 0 혹은 음수이면 false, 둘 다 아니면 에러를 발생시키는 함수를 작성하세요.
        func finalNum(number1: Int, number2: Int, number3: Int) -> String
        {
            var check3: String = "판별"
            let multThree: Int = number1 * number2 * number3
            if multThree > 0
            {
                check3 = "true"
            }else if multThree <= 0
            {
                check3 = "false"
            }
            return check3
        }
        print(finalNum(number1: 3, number2: 0, number3: 2))

        
        
    }



}

