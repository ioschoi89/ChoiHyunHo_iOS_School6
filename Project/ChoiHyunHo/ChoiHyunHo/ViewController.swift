//
//  ViewController.swift
//  ChoiHyunHo
//
//  Created by choi hyunho on 2018. 2. 7..
//  Copyright © 2018년 choi hyunho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var priceList: [String] = ["1000원", "800원", "1500원", "500원", ]
    var imgName: [String] = ["콜라.png", "사이다.png", "칸타타.png", "삼다수.png"]
    var statusLb: UILabel?
    var resultLb: UILabel?
    
    var price1000Btn: UIButton?
    var price500Btn: UIButton?
    var exchangeBtn: UIButton?
    var exchangeTemp: Int = 0
    var inputTemp: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeDrinkList(with: 4)
        resultLb = UILabel()
        resultLb?.frame = CGRect(x: 30, y: 380, width: 330, height: 50)
        resultLb?.backgroundColor = .black
        resultLb?.textColor = .white
        resultLb?.textAlignment = .right
        view.addSubview(resultLb!)
        statusLb = UILabel()
        statusLb?.frame = CGRect(x: 30, y: 430, width: 330, height: 50)
        statusLb?.backgroundColor = .gray
        statusLb?.textColor = .white
        statusLb?.textAlignment = .right
        view.addSubview(statusLb!)
        price1000Btn = UIButton()
        price1000Btn?.layer.borderWidth = 2
        price1000Btn?.setTitle("1000원", for: .normal)
        price1000Btn?.setTitleColor(.black, for: .normal)
        price1000Btn?.addTarget(self, action: #selector(self.inputPriceBtn(_:)), for: .touchUpInside)
        price1000Btn?.frame = CGRect(x: 30, y: 510, width: 120, height: 50)
        view.addSubview(price1000Btn!)
        price500Btn = UIButton()
        price500Btn?.layer.borderWidth = 2
        price500Btn?.setTitle("500원", for: .normal)
        price500Btn?.setTitleColor(.black, for: .normal)
        price500Btn?.frame = CGRect(x: 170, y: 510, width: 120, height: 50)
        price500Btn?.addTarget(self, action: #selector(self.inputPriceBtn(_:)), for: .touchUpInside)
        view.addSubview(price500Btn!)
        exchangeBtn = UIButton()
        exchangeBtn?.layer.borderWidth = 2
        exchangeBtn?.setTitle("반환", for: .normal)
        exchangeBtn?.setTitleColor(.black, for: .normal)
        exchangeBtn?.frame = CGRect(x: 300, y: 510, width: 70, height: 50)
        exchangeBtn?.addTarget(self, action: #selector(self.exchange(_:)), for: .touchUpInside)
        view.addSubview(exchangeBtn!)

        
        
        
    }

    func makeDrinkList(with count: Int){
        for index in 0..<count
        {
        let col: CGFloat = CGFloat(index%2)
        let row: CGFloat = CGFloat(index/2)
        let margin: CGFloat = 30
        
            let drinkView = ItemView(frame: CGRect(x: (margin*(col+1))+(150*col), y: (margin*(row+1))+(150*row), width: 150, height: 150))
        drinkView.priceText = priceList[index]
        drinkView.index = index
        drinkView.img = UIImage(named: imgName[index])
            drinkView.addTarget(self, action: #selector(self.drinkPriceBtn(_:)), for: .touchUpInside)
        view.addSubview(drinkView)
        
    }
    }
   
    @objc func inputPriceBtn(_ sender: UIButton){
        if sender == price1000Btn{
           
            statusLb?.text = "1000원 입금됨"
            inputTemp += 1000
        }else if sender == price500Btn{
            statusLb?.text = "500원 입금됨"
            inputTemp += 500
        }
        resultLb?.text = "잔액 : \(inputTemp)"
    }
    @objc func drinkPriceBtn(_ sender: UIButton){
        
            exchangeTemp = inputTemp
            if sender.tag == 0
            {
            exchangeTemp = inputTemp - 1000
            inputTemp = exchangeTemp
            statusLb?.text = "콜라가 나왔습니다"
            }else if sender.tag == 1
            {
            exchangeTemp = inputTemp - 800
            inputTemp = exchangeTemp
            statusLb?.text = "사이다가 나왔습니다"
            }else if sender.tag == 2
            {
            exchangeTemp = inputTemp - 1500
            inputTemp = exchangeTemp
            statusLb?.text = "칸타타가 나왔습니다"
            }else if sender.tag == 3
            {
            exchangeTemp = inputTemp - 500
            inputTemp = exchangeTemp
            statusLb?.text = "삼다수가 나왔습니다"
            }
        if exchangeTemp > 0{
            resultLb?.text = "잔액 : \(exchangeTemp)"
        }else if exchangeTemp < 0
        {
            resultLb?.text = "잔액 반환되었습니다 다시 돈을 넣어주세요"
            statusLb?.text = "\(exchangeTemp*(-1))만큼 부족합니다"
            exchangeTemp = 0
            inputTemp = 0
        }
        
    }
    @objc func exchange(_ sender: UIButton){
//        resultLb?.text?.removeAll()
        
        statusLb?.text = "\(inputTemp)원이 반환됨"
        exchangeTemp = 0
        inputTemp = 0
        
        
    }
}

