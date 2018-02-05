//
//  ViewController.swift
//  UITapGuestureImg
//
//  Created by Duong Son on 31/01/2018.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func tap_View(_ sender: Any) {
        let tap:UITapGestureRecognizer = sender as! UITapGestureRecognizer
        let img:UIImageView = UIImageView()
        
        img.image = #imageLiteral(resourceName: "icons8-cancel")
        img.frame.size = CGSize(width: 50, height: 50)
        img.center = tap.location(in: view)
        view.addSubview(img)
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

