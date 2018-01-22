//
//  ViewController.swift
//  demoSwitch
//
//  Created by Duong Son on 22/01/2018.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgLight: UIImageView!
    @IBOutlet weak var swSwitch: UISwitch!
    
    @IBAction func swSwitch(_ sender: Any) {
        if let sw = sender as? UISwitch {
            if (sw.isOn == true) {
                imgLight.image = #imageLiteral(resourceName: "turned on light")
            } else {
                imgLight.image = #imageLiteral(resourceName: "turned off light")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        swSwitch.isOn = false
        imgLight.image = #imageLiteral(resourceName: "turned off light")
        imgLight.contentMode = .scaleAspectFill
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

