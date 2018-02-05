//
//  ViewController.swift
//  practive2
//
//  Created by Duong Son on 1/31/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgContent: UIImageView!
    
    var arrImg:Array<String> = ["https://image.freepik.com/free-photo/nature-design-with-bokeh-effect_1048-1882.jpg", "https://image.freepik.com/free-vector/natural-meadow_23-2147517577.jpg", "https://s3.envato.com/files/12168796/nature_055_590.jpg"]
    var i:Int = 0
    
    func getDataImg(link:String) -> UIImage {
        let url:URL = URL(string: link)!
        
        do {
            let dataImg:Data = try Data(contentsOf: url)
            return UIImage(data: dataImg)!
        } catch {
            print("Không lấy được dữ liệu từ link \(link)")
            return UIImage(named: "001")!
        }
    }
    
    @IBAction func btnBack(_ sender: Any) {
        i = i - 1
        if (i < 0) {
            i = 0
        }
        imgContent.image = getDataImg(link: arrImg[i])
    }

    @IBAction func btnNext(_ sender: Any) {
        i = i + 1
        if (i >= arrImg.count) {
            i = arrImg.count - 1
        }
        imgContent.image = getDataImg(link: arrImg[i])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgContent.image = getDataImg(link: arrImg[i])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

