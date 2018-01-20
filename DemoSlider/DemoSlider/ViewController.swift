//
//  ViewController.swift
//  DemoSlider
//
//  Created by Duong Son on 20/01/2018.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblRed: UILabel!
    @IBOutlet weak var lblGreen: UILabel!
    @IBOutlet weak var lblBlue: UILabel!
    @IBOutlet weak var sldRed: UISlider!
    @IBOutlet weak var sldBlue: UISlider!
    @IBOutlet weak var sldGreen: UISlider!

    @IBAction func sldSelectColor(_ sender: Any) {
        view.backgroundColor = UIColor(displayP3Red: CGFloat(sldRed.value), green: CGFloat(sldGreen.value), blue: CGFloat(sldBlue.value), alpha: 1)
        lblRed.text = "Red:\(sldRed.value)"
        lblGreen.text = "Green:\(sldGreen.value)"
        lblBlue.text = "Blue:\(sldBlue.value)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Custom lblRed
        lblRed.textAlignment = .left
        lblRed.font = UIFont(name: "Arial", size: 14)
        lblRed.text = "Red:\(sldRed.value)"
//        Custom lblGreen
        lblGreen.textAlignment = .left
        lblGreen.font = UIFont(name: "Arial", size: 14)
        lblGreen.text = "Green:\(sldGreen.value)"
//        Custom lblBlue
        lblBlue.textAlignment = .left
        lblBlue.font = UIFont(name: "Arial", size: 14)
        lblBlue.text = "Blue:\(sldBlue.value)"
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

