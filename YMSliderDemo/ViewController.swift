//
//  ViewController.swift
//  YMSliderDemo
//
//  Created by 宮澤賢生 on 2017/03/07.
//  Copyright © 2017年 yochio. All rights reserved.
//

import UIKit
import YMslider

class ViewController: UIViewController {
    var slider : YMSlider?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider = YMSlider()
        slider?.frame = CGRect(x: 0, y: 300, width: UIScreen.main.bounds.size.width, height: 3.0)
        slider?.barHeight = 10.0
        slider?.rotateFlag = true
        self.view.addSubview(slider!)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        slider?.frame = CGRect(x: 0, y: 300, width: UIScreen.main.bounds.size.width, height: 10.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

