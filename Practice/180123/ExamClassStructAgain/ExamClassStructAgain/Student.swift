//
//  Student.swift
//  ExamClassStructAgain
//
//  Created by choi hyunho on 2018. 1. 25..
//  Copyright © 2018년 choi hyunho. All rights reserved.
//

import Foundation
class Student: Person
{
    var grade:String
    var subjects: [Subject]?
    
     init(name: String, gender: String, grade: String) {
        
        self.grade = grade
        super.init(name: name, gender: gender)
        
    }
    
    func addSubject(name: String, score: Int)
    {
        subjects!.append(Subject(name: name, score: score))
    }
    func setSubject(subjectDic: [String: Int]){
        
        for (subjectName, subjectScore) in subjectDic
        {
            addSubject(name: subjectName, score: subjectScore)
        }
        
    }
    //수학점수 가져오기
    func getMath() -> Int
    {
        //        guard let subjects = subjects else
        //        {
        //            return 0
        //        }
        for subject in subjects!
        {
            if subject.name == "수학"
            {
                return subject.score
            }
        }
        return 0
    }
    
}
