//
//  ViewController.swift
//  UITapGuesture
//
//  Created by Duong Son on 31/01/2018.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tapImg: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapImg.numberOfTapsRequired = 1
        tapImg.numberOfTouchesRequired = 1
    }
    
    @IBAction func tap_Img(_ sender: Any) {
        print("Dang tap vao hinh")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

