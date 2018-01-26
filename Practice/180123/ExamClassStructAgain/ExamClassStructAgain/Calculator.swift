//
//  Calculator.swift
//  ExamClassStructAgain
//
//  Created by choi hyunho on 2018. 1. 23..
//  Copyright © 2018년 choi hyunho. All rights reserved.
//

import Foundation
class Calculator
{
    //수학점수 구하기
    
    func math(student: Student) -> Int
    {
        let mathScore: Int = student.getMath()
        
        return mathScore
    }

    //과목 평균 구하기
    func average(student: Student)
    {
        
        var allScore: Int = 0
        var subjectCount: Int = 0
        for n in student.subjects
        {
            allScore += n.score
            subjectCount += 1
        }
        let averageScore: Double = Double(allScore) / Double(subjectCount)
        print("\(student.name)의 전체 평균 점수는 \(averageScore)점 입니다.")
    }
    // 두사람 중 수학  잘하는 학생 구하기
    func mathCompare(student1: Student, student2: Student)
    {
        let stu1Math: Int = student1.getMath()
        let stu2Math: Int = student2.getMath()
        if stu1Math > stu2Math
        {
            print("\(student1.name)가 \(stu1Math - stu2Math)점 높으므로 더 수학잘함")
        }else if stu2Math > stu1Math
        {
            print("\(student2.name)가 \(stu2Math - stu1Math)점 높으므로 더 수학잘함")
        }else
        {
            print("둘의 점수는 같습니다")
        }
        
    }

}










