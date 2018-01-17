//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//점수를 등급으로 변환해주는 함수

func grade(of score: Int) -> String
{
   
    var chkGrade: String = ""
    if score >= 0 && score <= 100
    {
        switch score
        {
        case 95...100:
            chkGrade = "A+"
        case 90...94:
            chkGrade = "A"
        case 85...89:
            chkGrade = "B+"
        case 80...84:
            chkGrade = "B"
        case 75...79:
            chkGrade = "C+"
        case 70...74:
            chkGrade = "C"
        default:
            chkGrade = "fail"
        }
    }else
    {
        chkGrade = "점수오류입니다 "
    }
        return chkGrade
    }
print(grade(of: 101))
print(grade(of: 99))
print(grade(of: 83))
print(grade(of: 50))

//등급을 받으면 점수로 반환해 주는 함수
func gradeScore(of point: String) -> Double
{
    var chkScore: Double = 0.0
    switch point {
    case "A+":
        chkScore = 4.5
    case "A":
        chkScore = 4.0
    case "B+":
        chkScore = 3.5
    case "B":
        chkScore = 3.0
    case "C+":
        chkScore = 2.5
    case "C":
        chkScore = 2.0
    default:
        chkScore = 0.0
    }
    return chkScore
}
print(gradeScore(of: "C"))
print(gradeScore(of: "A+"))
print(gradeScore(of: "F"))


//도형 넓이 정사각형, 직사각형, 원
//입력값은 모두 Double라고 가정한다.

func area(width: Double, height: Double, radian: Double) -> Double
{
   let compareData = (width, height, radian)
    var resultArea: Double = 0.0
    switch compareData
    {
    case (let w, 0, 0):
        resultArea = w * w
    case (let w, let h, 0):
        resultArea = w * h
    case (0, 0, let r):
        resultArea = 3.14 * r * r
    default:
        resultArea = 0
    }
    return resultArea
}

print(area(width: 3, height: 0, radian: 0))
print(area(width: 3, height: 4, radian: 0))
print(area(width: 0, height: 0, radian: 7))

//둘레 구하기
func peri(pWidth: Double, pHeight: Double, pRadian: Double) -> Double
{
    let comparePeriDAta = (pWidth, pHeight, pRadian)
    var resultPeri: Double = 0.0
    switch comparePeriDAta {
    case (let pw, 0, 0):
        resultPeri = 4 * pw
    case (let pw, let ph, 0):
        resultPeri = (2 * pw) + (2 * ph)
    case (0, 0, let pr):
        resultPeri = 2 * 3.14 * pr
    default:
        resultPeri = 0
    }
    return resultPeri
}
print(peri(pWidth: 3, pHeight: 0, pRadian: 0))
print(peri(pWidth: 3, pHeight: 4, pRadian: 0))
print(peri(pWidth: 0, pHeight: 0, pRadian: 10))
//사다리꼴 삼각형

func triArea(base: Double, upper: Double, tHeight: Double) -> Double
{
    let compareTriData = (base, upper, tHeight)
    var resultTriData: Double = 0
    switch compareTriData {
    case (let b, 0, let th):
        resultTriData = (b * th) / 2
    case (let b, let u, let th):
        resultTriData = (b + u)*th*0.5
    default:
        resultTriData = 0
    }
    return resultTriData
}
print(triArea(base: 4, upper: 0, tHeight: 2))
print(triArea(base: 4, upper: 2, tHeight: 4))
print(triArea(base: 0, upper: 0, tHeight: 0))
//부피 구하기 정육면체,육면체, 원기둥
func volume(baseline: Double, sideline: Double, vHeight: Double, vRadian: Double) -> Double
{
    let compareVData = (baseline, sideline, vHeight, vRadian)
    var resultVolume: Double = 0
    switch compareVData {
    case (let bl, 0, 0, 0):
        resultVolume = bl * bl * bl
    case (let bl, let sl, let vh, 0):
        resultVolume = bl * sl * vh
    case (0, 0, let vh, let vr):
        resultVolume = 3.14 * vr * vr * vh
    default:
        resultVolume = 0
    }
    return resultVolume
}
print(volume(baseline: 2, sideline: 3, vHeight: 2, vRadian: 0))
print(volume(baseline: 4, sideline: 0, vHeight: 0, vRadian: 0))
print(volume(baseline: 0, sideline: 0, vHeight: 2, vRadian: 5))

//원뿔, 구
func cVolume(cRadian: Double, cHeight: Double) -> Double
{
    let compareCData = (cRadian, cHeight)
    var resultCVolume: Double = 0
    switch compareCData {
    case (let cr, 0):
        resultCVolume = (3.14 * cr * cr * cr) * (4/3)
    case (let cr, let ch):
        resultCVolume = (3.14 * cr * cr * ch) / 3
    default:
        resultCVolume = 0
    }
    return resultCVolume
}
print(cVolume(cRadian: 4, cHeight: 3))
print(cVolume(cRadian: 4, cHeight: 0))
