//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//    정수 하나를 입력받아서 1부터 입력받은 수까지의 모든 수를 더한값을 반환해주는 함수 (ex: 10 >>> 55)
func addAll(num: Int) -> Int
{
    var sumAll: Int = 0
    for add in 1...num
    {
        sumAll += add
    }
    return sumAll
}
addAll(num: 10)
//    정수 두개를 입력받아서 첫번째 수를 두번째 수의 횟수 만큼 곱한 값을 반환해주는 함수 (ex: 2,3 >>> 8 /// 3,3 >>> 27)
func addTwo(firstNum: Int, secNum: Int) -> Int
{
    var resultNum: Int = 1
    for _ in 1...secNum
    {
        resultNum *= firstNum
    }
    return resultNum
}
//    정수를 받아서 각 자리의 합을 반환해주는 함수(ex: 312 >>> 6)

//    정수 하나를 받아서 1부터 정수까지의 숫자중 짝수를 모두 출력해주는 함수
func printEvenNum(num: Int)
{
    for n in 1...num
    {
      if n % 2 == 0
      {
        print(n)
        }
    }
}
printEvenNum(num: 10)
//    100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수
func printCommon()
{
    for n in 1...100
    {
        if n % 15 == 0
        {
            print(n)
        }
    }
}
printCommon()

//    정수 하나를 받아서 그 정수의 약수를 출력하는 함수
// divisor
func divisor(num: Int)
{
    for n in 1...num
    {
        if num % n == 0
        {
            print(n)
        }
    }
}
divisor(num: 10)
//    2 이상의 정수를 입력받아, 그 수가 소수인지 아닌지를 판별하는 함수
// prime number
func primeNum(num: Int) -> Bool
{
    var result: Bool = true
    for n in 2...num
    {
        if num % n != 0
        {
            result =  true
        }else
        {
            result = false
        }
    }
    return result
}
primeNum(num: 4)
primeNum(num: 3)
//    정수 하나를 입력받아서 입력받은 수 번째 피보나치 수를 반환하는 함수를 작성하세요. (ex: 3 >>> 2, 7 >>> 13)
// Fibonacci 1, 1, 2, 3, 5, 8, 13, 21,
//func fibonacci(num: Int)
//{
//
//}
var someInts:[Int] = [1,2,3,4]
print(someInts)
someInts = []
print(someInts)





