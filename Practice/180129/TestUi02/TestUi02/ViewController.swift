//
//  ViewController.swift
//  TestUi02
//
//  Created by choi hyunho on 2018. 1. 29..
//  Copyright © 2018년 choi hyunho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var viewList: [UIView] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //UI 기초 예제
        //view 안에 view 겹쳐 만들기 객체지향형
        
        viewList = makeViewLIst(number: 5)
        setFrame(list: viewList)
        addView(list: viewList)
        
        
    }
    //UI뷰 리스트 만들기
    
    func makeViewLIst(number: Int) -> [UIView]
    {
        var vList: [UIView] = []
        for n in 0..<number
        {
            let v = UIView()
            v.tag = number
            v.backgroundColor = getColor(num: n)
            vList.append(v)
        }
        return vList
    }
    //배경색 지정하기
    
    func getColor(num: Int) -> UIColor
    {
        let cycle = num % 3
        switch cycle {
        case 0:
            return UIColor.red
        case 1:
            return UIColor.blue
        case 2:
            return UIColor.yellow
        default:
            return UIColor.brown
        }
    }
    //프레임 위치 정하기 마진값 이용
    
    let margin: CGFloat = 15
    func setFrame(list: [UIView])
    {
        for index in 0..<list.count
        {
            if index == 0
            {
                list[index].frame = CGRect(x: margin, y: margin, width: view.frame.size.width - margin*2, height: view.frame.size.height - margin*2)
            }
            
            else{
                let superView = list[index-1].frame
            list[index].frame = CGRect(x: margin, y: margin, width: superView.size.width - margin*2, height: superView.size.height - margin*2)
            }
        }
        
    }
    //상위 뷰에 서브 뷰 add하기
    func addView(list: [UIView])
    {
        for index in 0..<list.count
        {
            if index == 0
            {
                view.addSubview(list[index])
            }
            else{
                list[index-1].addSubview(list[index])
            }
        }
    }

}

