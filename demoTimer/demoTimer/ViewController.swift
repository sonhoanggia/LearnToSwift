//
//  ViewController.swift
//  demoTimer
//
//  Created by Duong Son on 24/01/2018.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer:Timer!
    var angle:Double = 0
    @IBOutlet weak var imgFan: UIImageView!
    
    @IBAction func swFan(_ sender: Any) {
        if let sw = sender as? UISwitch {
            if sw.isOn {
                timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true, block: { (time) in
                    self.angle += 5
                    self.imgFan.transform = CGAffineTransform(rotationAngle: CGFloat((self.angle * Double.pi) / 180))
                })
            } else {
                timer.invalidate()
                timer = nil
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

