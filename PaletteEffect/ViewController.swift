//
//  ViewController.swift
//  PaletteEffect
//
//  Created by 503 on 2020/02/25.
//  Copyright © 2020 ssang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //배열선언
    var colorArray=[UIColor.red, UIColor.orange, UIColor.yellow,
                    UIColor.green, UIColor.blue, UIColor.gray,
                    UIColor.purple]
    
    @IBOutlet weak var big: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createRect()
    }
    //팔래ㅔ트 조각형 생성하기
    func createRect(){
        for i in 0...6{
            var myView =
                UIView(frame: CGRect(x: 200+(i*52), y: 100, width: 50, height: 50))
            myView.backgroundColor = colorArray[i]
            var gesture =
                UITapGestureRecognizer(target: self, action: #selector(showBg))
            myView.addGestureRecognizer(gesture)
        
            self.view.addSubview(myView)
            
        }
    }
    
    @objc func showBg(sender:UITapGestureRecognizer){
        print("나 터치했어?")
        
        big.backgroundColor = sender.view?.backgroundColor
        
    }

}

