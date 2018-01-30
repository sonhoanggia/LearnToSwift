//
//  manHinh2.swift
//  chuyenMH
//
//  Created by Duong Son on 30/01/2018.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class manHinh2: UIViewController {
    @IBOutlet weak var lblHienThi: UILabel!
    var dulieu:String!
    override func viewDidLoad() {
        super.viewDidLoad()
//        lblHienThi.text = chuoi
        lblHienThi.text = dulieu
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
