//
//  ItemView.swift
//  ChoiHyunHo
//
//  Created by choi hyunho on 2018. 2. 7..
//  Copyright © 2018년 choi hyunho. All rights reserved.
//

import UIKit

class ItemView: UIView {

    private var drinkImg: UIImageView?
    private var priceLb: UILabel?
    private var drinkBtn: UIButton?
    var index: Int = 0{
        didSet{drinkBtn?.tag = index}
    }
    var img: UIImage?{
        get{return drinkImg?.image}
        set{drinkImg?.image = newValue}
    }
    var priceText: String?{
        get{return priceLb?.text}
        set{priceLb?.text = newValue}
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        createUI()
        updateLayOut()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createUI(){
        drinkImg = UIImageView()
        drinkImg?.layer.borderWidth = 1
        self.addSubview(drinkImg!)
        
        priceLb = UILabel()
        priceLb?.textColor = .black
        priceLb?.textAlignment = .right
        priceLb?.font = UIFont.systemFont(ofSize: 15)
        self.addSubview(priceLb!)
        
        drinkBtn = UIButton()
        self.addSubview(drinkBtn!)
    }
    func updateLayOut(){
        drinkImg?.frame = self.bounds
        priceLb?.frame = CGRect(x: 0, y: self.frame.size.height*3/4, width: self.frame.size.width, height: self.frame.size.height/4)
        drinkBtn?.frame = self.bounds
        
    }
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControlEvents){
        drinkBtn?.addTarget(target, action: action, for: controlEvents)
    }
}
