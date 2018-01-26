//
//  Calculator.swift
//  ExamClassStruct
//
//  Created by choi hyunho on 2018. 1. 22..
//  Copyright © 2018년 choi hyunho. All rights reserved.
//

import Foundation

class Calculator
{
    //각 평균 구하기
    func average(student: Person)
    {
       
        let allSubject:[Subject] = student.subjects
        var totalScore: Int = 0
        for n in allSubject
        {
           totalScore += n.score
        }
        let average = Double(totalScore) / Double(allSubject.count)

        print("\(student.name)은 \(student.major)이고, 과목 평균은 \(average) 입니다")
    }
    
    // 가장 체육 잘하는 아이
    func exerciseTop(_ student: Person...) //파라미터 복수로 받을 수 있다, comma 이용
    {
        
        var topName: String = ""
        var topScore: Int = 0
        for person in student
        {
            var compare: Int = person.power()
            //과목들 중에서 체육 찾아서 체육의 점수를 가져오기
          
            if topScore < compare
            {
                topScore = compare
                topName = person.name
            }
        }
        print("체육을 가장 잘하는 학생은 \(topName)입니다")
    }
    // 대학생중 수학 점수가 높은 아이
    
    func mathTopUni(target1: Person, target2: Person)
    {
        let target1Math = target1.getMath()
        let target2Math = target2.getMath()
        
        var smartPerson: Person?
        var diffScore: Int = 0
        if target1Math > target2Math
        {
            smartPerson = target1
            diffScore = target1Math - target2Math
        }else
        {
            smartPerson = target2
            diffScore = target2Math - target1Math
        }
         print("대학생중 수학점수가 가장 높은 이는 \(smartPerson!.name)입니다. 점수차이는 \(diffScore)입니다.")
    
    }
}







