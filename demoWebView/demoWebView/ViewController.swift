//
//  ViewController.swift
//  demoWebView
//
//  Created by Duong Son on 25/01/2018.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtSearch: UITextField!
    @IBOutlet weak var wvContent: UIWebView!
    
    @IBAction func btnSearch(_ sender: Any) {
        if let url = URL(string: txtSearch.text!) {
            var link:String = txtSearch.text!
            
            if (link.hasPrefix("https://") || link.hasPrefix("http://")) {
                let rq:URLRequest = URLRequest(url: url)
                wvContent.loadRequest(rq)
            } else {
                link = "https://\(link)"
                let url2:URL = URL(string: link)!
                let rq:URLRequest = URLRequest(url: url2)
                wvContent.loadRequest(rq)
            }
        } else {
            print("Lỗi chưa nhập URL.")
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtSearch.placeholder = "Nhập URL"
        txtSearch.clearButtonMode = .whileEditing
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

