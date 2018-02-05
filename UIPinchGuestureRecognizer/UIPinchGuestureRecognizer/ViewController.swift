//
//  ViewController.swift
//  UIPinchGuestureRecognizer
//
//  Created by Duong Son on 2/5/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pinchImg: UIPinchGestureRecognizer!
    @IBOutlet weak var imgLight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pinchImg.scale = 2
    }

    @IBAction func pinch_Img(_ sender: Any) {
        let pinchImgLight:UIPinchGestureRecognizer = sender as! UIPinchGestureRecognizer
        print(pinchImgLight.scale)
//        imgLight.transform = imgLight.transform.scaledBy(x: pinchImgLight.scale, y: pinchImgLight.scale)
        pinchImgLight.view?.transform = (pinchImgLight.view?.transform.scaledBy(x: pinchImgLight.scale, y: pinchImgLight.scale))!
        pinchImgLight.scale = 1

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

