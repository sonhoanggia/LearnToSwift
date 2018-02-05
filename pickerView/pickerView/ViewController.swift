//
//  ViewController.swift
//  pickerView
//
//  Created by Duong Son on 2/5/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerDanhSach: UIPickerView!
//    let arrData = [String](arrayLiteral: "số 1", "số 2", "số 3", "số 4", "số 5")
    let arrData:Array<Array<String>> = [["số 1", "số 2", "số 3", "số 4", "số 5"], ["số 6", "số 7", "số 8", "số 9", "số 10"], ["số 11", "số 12", "số 13", "số 14", "số 15"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerDanhSach.delegate = self
        pickerDanhSach.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return arrData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrData[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrData[component][row]
    }
}

