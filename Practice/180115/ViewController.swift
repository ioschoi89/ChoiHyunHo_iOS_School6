//
//  ViewController.swift
//  FuntionExam03
//
//  Created by choi hyunho on 2018. 1. 15..
//  Copyright © 2018년 choi hyunho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var str = "Hello, playground"
        //1-a . 이름(문자열을)받아서 이름을 출력하는 함수
        func printName(name: String){
            print(name)
            
        }
        printName(name: "Ironman")
        
        //1-b. 나이(정수)를 받아서 나이를 출력하는 함수
        func printAge(age: Int){
            print(age)
        }
        printAge(age: 10)
        
        //1-c 이름과 주소를 입력받아 자기소개를을 프린트 하는 함수
        func printIntro(name: String, add: String)
        {
            print("나의 이름은 \(name)이고 주소는 \(add)입니다.")
        }
        
        printIntro(name: "batman", add: "Gotham city")
        
        //정수를 하나 입력 받아서 2로 나눈 값을 반환해 주는 함수
        
        func calc1(num: Int) -> Int{
            let resultNum: Int = num / 2
            return resultNum
            
        }
        print(calc1(num: 8))
        //정수를 하나 입력 받아서 제곱을 반환해 주는 함수
        func calc2(num: Int) -> Int
        {
            let resultNum: Int = num * num
            return resultNum
        }
        print(calc2(num: 10))
        
        
        //2-a. 두개의 정수를 입력받아 두수의 합을 반환해주는 함수
        func calc3(num1: Int, num2: Int) -> Int
        {
            let sum: Int = num1 + num2
            return sum
        }
        print(calc3(num1: 4, num2: 5))
        
        //2-b. 두개의 정수를 입력받아 두수의 차를 반환해주는 함수
        func calc4(num1: Int, num2: Int) -> Int{
            let minus: Int = num1 - num2
            return minus
        }
        print(calc4(num1: 7, num2: 6))
        
        //2-c. 두개의 정수를 입력받아 두수의 곱을 반환해주는 함수
        func calc5(num1: Int, num2: Int) -> Int{
            let mult: Int = num1 * num2
            return mult
        }
        print(calc5(num1: 3, num2: 7))
        
        //2-d. 두개의 정수를 입력받아 두수의 나눗셈을 반환해주는 함수
        func calc6(num1: Int, num2: Int) -> Int{
            let div: Int = num1 / num2
            return div
        }
        print(calc6(num1: 90, num2: 9))
        
        //부모님과 내 나이를 입력 후 그 나이차를 프린트 하는 함수(어머니의 나이는 40세이고 내나이는 20살이므로 나이차이는 20살입니다)
        func familyAge(pAge: Int, mAge: Int){
            let result: Int = pAge - mAge
            let printResult: String = "어머님의 나이는 \(pAge)세이고 내 나이는 \(mAge)살이므로 나이차이는 \(result)살 입니다 "
            print(printResult)
        }
        familyAge(pAge: 50, mAge: 20)
        
        // 시험 점수를 여러개 입력 받아서(4개이상) 평균을 반환해 주는 함수
        func averageScore(eng: Int, math: Int, sci: Int, soc: Int) -> Double{
            let average: Double = Double(eng + math + sci + soc) / 4
            return average
        }
        print(averageScore(eng: 90, math: 80, sci: 90, soc: 90))
        
        //정수를 하나 입력 받아서 실수로 변환 후 반환해 주는 함수
        func trans(num: Int) -> Double
        {
            let transDouble: Double = Double(num)
            return transDouble
        }
        print(trans(num: 87))
        //정수를 두개를 입력 받아 두수를 합친 수를 출력하는 함수(3,4 입력시 34)
        func combineNum(num1: Int, num2: Int) -> Int
        {
            let transNum1: String = String(num1)
            let transNum2: String = String(num2)
            let combine: String = transNum1 + transNum2
            return Int(combine)!
            
            
        }
        print(combineNum(num1: 5, num2: 6))
        print(combineNum(num1: 88, num2: 99))
        
        //실수를 하나 입력받아서 소수점 첫번쨰 자리에서 반올림 후 정수를 반환해 주는 함수
        func roundOff(num: Double) -> Int {
            let roundNum: Double = num + 0.5
            let resultNum: Int = Int(roundNum)
            return resultNum
            
        }
        print(roundOff(num: 7.3))
        print(roundOff(num: 7.7))
        
        
        
        
        
        
        
        

        
        
    }



}

