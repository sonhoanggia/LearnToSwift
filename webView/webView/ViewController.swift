//
//  ViewController.swift
//  webView
//
//  Created by Duong Son on 25/01/2018.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wvWeb: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url:URL  = URL(string: "https://www.youtube.com/embed/9Tm9axXZFhE")!
        let rq:URLRequest = URLRequest(url: url)
        wvWeb.loadRequest(rq)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

