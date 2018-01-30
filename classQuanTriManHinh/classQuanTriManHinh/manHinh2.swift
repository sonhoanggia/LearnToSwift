//
//  manHinh2.swift
//  classQuanTriManHinh
//
//  Created by Duong Son on 30/01/2018.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class manHinh2: UIViewController {

    @IBAction func btnMH1(_ sender: Any) {
        let scr = storyboard?.instantiateViewController(withIdentifier: "MH1") as! ViewController
        present(scr, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
