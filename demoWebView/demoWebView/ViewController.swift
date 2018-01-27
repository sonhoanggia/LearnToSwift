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
    
    @IBAction func btnReload(_ sender: Any) {
        wvContent.reload()
    }

//    Hàm truy cập website
    
    func accessWeb(link:String) -> Void {
        let url2:URL = URL(string: link)!
        let rq:URLRequest = URLRequest(url: url2)
        wvContent.loadRequest(rq)
    }
    
//  Khai báo mảng chứa chuỗi lịch sử link đã truy cập
    
    var history:Array<String> = Array<String>()
    var i:Int = 0
    
    @IBAction func btnNext(_ sender: Any) {
        i += 1
        if (i >= history.count) {
            i = history.count - 1
        } else {
            accessWeb(link: history[i])
            txtSearch.text = history[i]
        }
    }
    
    @IBAction func btnBack(_ sender: Any) {
        i -= 1
        if (i < 0) {
            i = 0
        } else {
            accessWeb(link: history[i])
            txtSearch.text = history[i]
        }
    }
    
    @IBAction func btnSearch(_ sender: Any) {
        if let url = URL(string: txtSearch.text!) {
            var link:String = txtSearch.text!
            
            if (link.hasPrefix("https://") || link.hasPrefix("http://")) {
                let rq:URLRequest = URLRequest(url: url)
                wvContent.loadRequest(rq)
            } else {
                link = "https://\(link)"
                accessWeb(link: link)
                history.insert(link, at: i)
                i += 1
            }
        } else {
            print("Lỗi chưa nhập URL.")
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtSearch.placeholder = "Nhập URL"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

