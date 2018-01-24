//
//  ViewController.swift
//  timer
//
//  Created by Duong Son on 22/01/2018.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer:Timer!
    var i:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { (timer) in
//            print("hello")
//        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(printText), userInfo: nil, repeats: false)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(printText), userInfo: nil, repeats: true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func printText() {
        i += 1
        if i == 5 {
            timer.invalidate()
            timer = nil
        }
        print("hello world")
    }
}

