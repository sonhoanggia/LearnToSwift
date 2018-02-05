//
//  ViewController.swift
//  appLibraryPhoto
//
//  Created by Duong Son on 2/5/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var lblHeader: UILabel!
    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var imgContent: UIImageView!
    @IBOutlet weak var lblSelectedNameImg: UILabel!
    
    let arrImage:Array<Array<UIImage>> = [[#imageLiteral(resourceName: "image1"), #imageLiteral(resourceName: "image2"), #imageLiteral(resourceName: "image3"), #imageLiteral(resourceName: "image4"), #imageLiteral(resourceName: "image5")], [#imageLiteral(resourceName: "image6"), #imageLiteral(resourceName: "image7"), #imageLiteral(resourceName: "image8"), #imageLiteral(resourceName: "image9"), #imageLiteral(resourceName: "image10")]]
    let arrNameImage:Array<Array<String>> = [["Hình 1", "Hình 2", "Hình 3", "Hình 4", "Hình 5"], ["Hình 6", "Hình 7", "Hình 8", "Hình 9", "Hình 10"]]
    let HEIGHT:CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerImage.delegate = self
        pickerImage.dataSource = self
        pickerImage.selectRow(2, inComponent: 0, animated: true)
        pickerImage.selectRow(1, inComponent: 1, animated: true)
        
//        Custom Label Header
        lblHeader.layer.borderWidth = 1
        lblHeader.layer.borderColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        print(arrImage.count)
        return arrImage.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        print(arrNameImage[component].count)
        return arrImage[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let viewImage:UIView = UIView()
        viewImage.frame = CGRect(x: 0, y: 0, width: pickerView.frame.width / CGFloat(arrImage.count), height: HEIGHT)
//        viewImage.frame = CGRect(x: 0, y: 0, width: pickerView.frame.width / 2, height: HEIGHT)
        
        let imgView:UIImageView = UIImageView()
        let lblNameImage:UILabel = UILabel()
        
        imgView.image = arrImage[component][row]
        imgView.frame = CGRect(x: 0, y: 0, width: viewImage.frame.width, height: HEIGHT)
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        
        lblNameImage.text = arrNameImage[component][row]
        lblNameImage.frame = CGRect(x: 10, y: viewImage.frame.height - 30, width: viewImage.frame.width, height: 30)
        
        viewImage.addSubview(imgView)
        viewImage.addSubview(lblNameImage)
        
        return viewImage
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return CGFloat(HEIGHT)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblSelectedNameImg.text = arrNameImage[component][row]
        imgContent.image = arrImage[component][row]
    }
}

