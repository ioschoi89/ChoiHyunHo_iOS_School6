//
//  ViewController.swift
//  ExamArray
//
//  Created by choi hyunho on 2018. 1. 19..
//  Copyright © 2018년 choi hyunho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
   
        
        var age: [Int] = [1,2,3,4]
        print(age.count) //배열의 갯수
        age.append(5)   //새로운 element 추가,맨 뒤로 감
        print(age)
        age.insert(6, at: 0) // at index 앞에 6 element 삽입
        print(age)
        age.remove(at: 0)   // -> 0번 index의 element tkrwp
        print(age)
        print(age.isEmpty)  //.isEmpty : 빈 배열이 있는지 확인
        age.swapAt(0, 4)    // 0번째 index와 4번째 index의 element 바꾸기
        print(age)
        
        //Array 예제
        func arrayTest()
        {
            var list: [String] = ["my", "name", "is", "a", "choi", "hyunho"]
            list.append("Good Job")
            print("list배열의 총 갯수는 \(list.count) 입니다")
            print(list[0])
            list.swapAt(4, 5)
            list.insert("Hello", at: 0)
            
            for printAll in list
            {
                print(printAll)
            }
            print(list.isEmpty)
           
        }
        print(arrayTest())
        
        //set 예제
        func setTest(){
            let firstSetNum: Set = [2,3,4,5,6,7,8]
            let secondSetNum: Set = [5,7,8,9,10]
            let thirdSetNum: Set = [1,3,5,7,10]
            
            //교집합
            let intersectList = firstSetNum.intersection(secondSetNum)
            print(intersectList)
            //교집합의 여집합 & 정렬
            let differenceList = firstSetNum.symmetricDifference(secondSetNum).sorted()
            print(differenceList)
            //합집합 & 정렬
            let unionList = firstSetNum.union(thirdSetNum).sorted()
            print(unionList)
            //차집합 & 정렬
            let subtractList = firstSetNum.subtracting(thirdSetNum).sorted()
            print(subtractList)
            
            
        }
        print(setTest())
    
        //Dictionary 사용
        var hero: [String: Any] = ["p1" : "ironman", "p2" : "batman", "p3" : "hulk", "p1Age" : 10, "p2Age" : 30, "p3Age" : 40]
        //딕셔너리 element 갯수
        print(hero.count)
        //빈 배열 확인
        print(hero.isEmpty)
        //element 추가 및 수정 같은 키일 경우 해당 키의 값에 덮어쓰기됨
        hero.updateValue("aquaman", forKey: "p4")
        print(hero)
        
        //element 삭제
        hero.removeValue(forKey: "p2")
        print(hero)
        
        //값 불러오기
        let intro: String = "나는 " + (hero["p1"] as! String) + " 이다"
        print(intro)
        let doubleAge: Int = (hero["p3Age"] as! Int) * 2
        print(doubleAge)
        
    }



}

