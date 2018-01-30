//
//  ViewController.swift
//  chuyenMH
//
//  Created by Duong Son on 30/01/2018.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit
//
//var chuoi:String = ""

class ViewController: UIViewController {

    @IBOutlet weak var txtNhap: UITextField!
    @IBAction func btnChuyenMH2(_ sender: Any) {
//        chuoi = txtNhap.text!
        let scr = storyboard?.instantiateViewController(withIdentifier: "MH2") as! manHinh2
        scr.dulieu = txtNhap.text!
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

