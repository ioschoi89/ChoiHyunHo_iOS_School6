//
//  ViewController.swift
//  Examfor
//
//  Created by choi hyunho on 2018. 1. 18..
//  Copyright © 2018년 choi hyunho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //입력 숫자 부터 1 까지 더한수 반환
        func trianguler(num: Int) -> Int
        {
            var sum: Int = 0
            var tempNum: Int = 0
            while tempNum < num
            {
                tempNum += 1
                sum += tempNum
            }
            return sum
        }
        print(trianguler(num: 10))
    
    
        //  각 자리수 더하기
        func addAll(num: Int) -> Int
        {
            var sum: Int = 0
            var tempNum: Int = num
            while tempNum > 0
            {
                let lastNum: Int = tempNum % 10
                sum += lastNum
                tempNum /= 10
            }
            return sum
        }
        print(addAll(num: 111))
        
        // 숫자 거꾸로 반환하기
        func reverse(num: Int) -> Int
        {
            var revSum: String = ""
            var tempNum: Int = num
            while tempNum > 0
            {
                let lastNum: Int = tempNum % 10
                revSum += String(lastNum)
                tempNum /= 10
            }
            return Int(revSum)!
        }
        print(reverse(num: 4567))
        
    }
    
    func timesTable(of times: Int)
    {
        
        print("\(times)단")
        
        var count: Int = 1
        
        while count < 10 {
            print("\(times) * \(count) = \(times * count)")
            count += 1
        }
    }
    
    
    timesTable(of: 2)
    //4 - > 4 + 3 + 2 + 1
    func trianguler(num: Int) -> Int
    {
        
        
        var sum: Int = 0
        var count: Int = 0
        while count < num
        {
            
            count += 1
            sum += count
        }
        return sum
    }
    trianguler(num: 4)
    trianguler(num: 10)
    trianguler(num: -1)
    
    func addAll(num2: Int) -> Int
    {
        var sum: Int = 0
        var tempNum: Int = num2
        while tempNum > 0
        {
            let lastNum: Int = tempNum % 10
            sum += lastNum
            tempNum /= 10
        }
        return sum
    }
    addAll(num2: 123)
    
    //123 -> 321, 213 -> 312
    func revers(num3: Int) -> Int
    {
        var tempNum: Int = num3
        var rev: String = ""
        while tempNum > 0
        {
            let lastNum: Int = tempNum % 10
            rev += String(lastNum)
            tempNum /= 10
        }
        return Int(rev)!
    }
    revers(num3: 123)
    revers(num3: 443)
    revers(num3: 5678)
    revers(num3: 1234)
    
    
    func timesSecTable(of times: Int)
    {
        print("\(times)단")
        for num in 1...9
        {
            print("\(times * num)")
        }
        
    }
    timesSecTable(of: 4)

    
    
    
    
    
    //collattz
    func collatz(num: Int) -> Int
    {
        var count: Int = 0
        var tempNum: Int = num
        
        while tempNum != 1
        {
            if tempNum % 2 == 0
            {
                tempNum = tempNum / 2
                
            }else
            {
                tempNum = (3 * tempNum) + 1
                
            }
            count += 1
            if count >= 500
            {
                return -1
            }
            
        }
        
        return count
    }
    collatz(num: 6)
    collatz(num: 3)
    collatz(num: 9)
    collatz(num: 1797)
    
    
    //양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나누어져야한다
    //18->1 + 8 =9 , 18/9 =2 -> 하샤드
    
    func harshad(num: Int) -> Bool
    {
        var result: Bool = true
        var tempNum: Int = num
        var sumNum: Int = 0
        while tempNum > 0
        {
            let lastNum: Int = tempNum % 10
            sumNum += lastNum
            tempNum /= 10
        }
        if num % sumNum == 0
        {
            result = true
        }else
        {
            result = false
        }
        return result
        
    }
    harshad(num: 18)
    harshad(num: 17)
    harshad(num: 88)
    


    
}

