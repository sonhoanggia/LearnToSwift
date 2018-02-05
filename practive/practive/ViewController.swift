//
//  ViewController.swift
//  practive
//
//  Created by Duong Son on 1/31/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblView: UILabel!
    @IBOutlet weak var btnClick: UIButton!
    @IBOutlet weak var txtText: UITextField!
    
    @IBAction func btnPrintText(_ sender: Any) {
        let str:String = txtText.text!
        let alert:UIAlertController = UIAlertController(title: "Thông báo", message: "Số điện thoại của bạn \(str)", preferredStyle: UIAlertControllerStyle.alert)
        
//        let btnOK:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.destructive, handler: nil)
//        alert.addAction(btnOK)
        let btnLogin:UIAlertAction = UIAlertAction(title: "Login", style: UIAlertActionStyle.default) { (btnLogin) in
            self.lblView.text = "Xin Chào Các Bạn"
        }
        
        alert.addAction(btnLogin)
        present(alert, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Custom label
        
        lblView.text = "Hello World"
        lblView.font = UIFont(name: "Times New Roman", size: 30)
        lblView.numberOfLines = 0
        lblView.textAlignment = .center
        lblView.textColor = #colorLiteral(red: 0.3304768801, green: 0.5780853033, blue: 1, alpha: 1)
        lblView.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        lblView.layer.borderWidth = 1
        lblView.layer.borderColor = UIColor.black.cgColor
        
//        Custom button
        btnClick.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        btnClick.layer.borderWidth = 1
        btnClick.frame.size = CGSize(width: 150, height: 150)
        btnClick.layer.borderColor = UIColor.black.cgColor
        btnClick.layer.cornerRadius = btnClick.frame.width / 2
        btnClick.clipsToBounds = true
//        Custom textfield
        
        txtText.placeholder = "☏ Nhập số điện thoại"
        txtText.clearButtonMode = .whileEditing
        txtText.keyboardType = .numberPad
        txtText.clipsToBounds = true
        txtText.layer.borderColor = UIColor.black.cgColor
        txtText.layer.borderWidth = 1
        txtText.layer.cornerRadius = 2
    }



}

