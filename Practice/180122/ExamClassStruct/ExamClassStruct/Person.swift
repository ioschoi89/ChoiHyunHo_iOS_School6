//
//  Person.swift
//  ExamClassStruct
//
//  Created by choi hyunho on 2018. 1. 22..
//  Copyright © 2018년 choi hyunho. All rights reserved.
//

import Foundation

class Person
{
    var name: String
    var gender: String
    var major: String
    
    var subjects: [Subject] = []
    
    init(name: String, gender: String, major: String)
    {
        self.name = name
        self.gender = gender
        self.major = major
        
    }
    func addSubject(name: String, score: Int)
    {
        subjects.append(Subject(name: name, score: score))

    }
    func setSubjects(subjectDic:[String:Int])
    {
        for (subName, subScore) in subjectDic
        {
            addSubject(name: subName, score: subScore)
        }
    }
    func power() -> Int{
        for subject in subjects
        {
            if subject.name == "체육"
            {
               return  subject.score
            }
        }
        return 0
    }
    func getMath() -> Int
    {
        for subject in subjects
        {
            if subject.name == "수학"
            {
                return  subject.score
            }
        }
        return 0
    }
}











