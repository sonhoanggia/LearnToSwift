//
//  ViewController.swift
//  pickerViewImage
//
//  Created by Duong Son on 2/5/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerImage: UIPickerView!
    var arrImg:Array<UIImage> = [#imageLiteral(resourceName: "image1"), #imageLiteral(resourceName: "image2"), #imageLiteral(resourceName: "image3"), #imageLiteral(resourceName: "image4"), #imageLiteral(resourceName: "image5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerImage.delegate = self
        pickerImage.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrImg.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let contentPicker:UIImageView = UIImageView()
        contentPicker.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
        contentPicker.contentMode = .scaleAspectFit
        contentPicker.image = arrImg[row]
        return contentPicker
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
}

