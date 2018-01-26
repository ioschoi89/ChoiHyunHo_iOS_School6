//
//  ViewController.swift
//  ExamClassStruct
//
//  Created by choi hyunho on 2018. 1. 22..
//  Copyright © 2018년 choi hyunho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let cal = Calculator()
    override func viewDidLoad() {
        super.viewDidLoad()
        let mazingaZ = Person(name: "마징가", gender: "남성", major: "초등학생")
        let dic = ["국어": 80, "수학": 100, "영어": 70, "기술": 99, "과학": 100, "체육": 80]
        mazingaZ.setSubjects(subjectDic: dic)
       
        let ironMan = Person(name: "아이언맨", gender: "남성", major: "대학생")
        let ironDic = ["국어": 70, "수학": 100, "영어": 100, "기술": 99, "과학": 100, "체육": 90]
        ironMan.setSubjects(subjectDic: ironDic)
        
        let wonderWoman = Person(name: "원더우먼", gender: "여성", major:"대학생")
        let wonderDic = ["국어": 20, "수학": 20, "영어": 100, "기술": 90, "과학": 80, "체육": 100]
        wonderWoman.setSubjects(subjectDic: wonderDic)
        
        cal.average(student: ironMan)
        cal.exerciseTop(ironMan, wonderWoman)
        cal.mathTopUni(target1: ironMan, target2: wonderWoman)
        
    }


}






