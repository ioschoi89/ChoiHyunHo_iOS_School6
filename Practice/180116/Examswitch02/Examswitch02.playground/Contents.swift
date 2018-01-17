//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//월을 입력받아 해당월의 이름을 반환해주는 함수 (1->Jan,10->Dec)
func engMonth(of month: Int) -> String
{
    var transMonth: String = "month"
    switch month {
    case 1:
        transMonth = "Jan"
    case 2:
        transMonth = "Feb"
    case 3:
        transMonth = "March"
    case 4:
        transMonth = "April"
    case 5:
        transMonth = "May"
    case 6:
        transMonth = "Jun"
    case 7:
        transMonth = "July"
    case 8:
        transMonth = "Aug"
    case 9:
        transMonth = "Sep"
    case 10:
        transMonth = "Oct"
    case 11:
        transMonth = "Nov"
    case 12:
        transMonth = "Dec"
    default:
        transMonth = "에러"
    }
    return "\(month)는 \(transMonth) 입니다"
}
print(engMonth(of: 10))
print(engMonth(of: 3))
print(engMonth(of: 14))


//년 월을 입력 받아 해당 달의 마지막 날을 반환해주는 함수(윤년포함)
//윤년일때 : 1,3,5,7,8,10,12 -> 31 , 2->29 , 4,6,9,11->30
//윤년이 아닐때 : 1,3,5,7,8,10,12->31, 2->28, 4,6,9,11->30
func isLeafYear(year: Int) -> Bool
{
    var check: Bool = true
    if (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)
    {
        check = true
    }else
    {
        check = false
    }
    return check
}

func calender(inYear: Int, mon: Int) -> String
{
        var resultLastDay: String = ""

        switch mon
        {
        case 2:
        if isLeafYear(year: inYear) == true
        {
        resultLastDay = "윤년이므로 \(mon)월의 마지막날은 29일 입니다"
        }else
        {
        resultLastDay = "윤년이 아니므로 \(mon)월의 마지막 날은 28일입니다."
        }
        case 4,6,9,11:
        resultLastDay = "\(mon)월의 마지막날은 30일 입니다"
        default:
        resultLastDay = "\(mon)월의 마지막날은 31일 입니다"
        }
    
    
    
    return resultLastDay
}
print(calender(inYear: 2016, mon: 2))
print(calender(inYear: 2017, mon: 2))
print(calender(inYear: 2024, mon: 4))


