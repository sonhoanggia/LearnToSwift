//
//  ViewController.swift
//  classQuanTriManHinh
//
//  Created by Duong Son on 30/01/2018.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnMH1(_ sender: Any) {
        let scr = storyboard?.instantiateViewController(withIdentifier: "MH2") as! manHinh2
        navigationController?.pushViewController(scr, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

