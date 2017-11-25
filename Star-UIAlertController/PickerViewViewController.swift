//
//  PickerViewViewController.swift
//  Star-UIAlertController
//
//  Created by Alex Hsieh on 2017/11/25.
//  Copyright © 2017年 Alex Hsieh. All rights reserved.
//

import UIKit

class PickerViewViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var SignArrey = [sign(engName: "Aries", name: "牡羊座  Aries"),
                     sign(engName: "Taurus", name: "金牛座  Taurus"),
                     sign(engName: "Gemini", name: "雙子座  Gemini"),
                     sign(engName: "Cancer", name: "巨蟹座  Cancer"),
                     sign(engName: "Leo", name: "獅子座  Leo"),
                     sign(engName: "Virgo", name: "處女座  Virgo"),
                     sign(engName: "Libra", name: "天秤座  Libra"),
                     sign(engName: "Scorpio", name: "天蠍座  Scorpio"),
                     sign(engName: "Sagittarius", name: "射手座  Sagittarius"),
                     sign(engName: "Capricorn", name: "魔羯座  Capricorn"),
                     sign(engName: "Aquarius", name: "水瓶座  Aquarius"),
                     sign(engName: "Pisces", name: "雙魚座  Pisces")
    ]

   

    
    @IBOutlet weak var signImage: UIImageView!
    @IBOutlet weak var signTextField: UITextField!
    
    var picker = UIPickerView()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return SignArrey.count
    
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return SignArrey[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        signTextField.text = SignArrey[row].name
        signImage.image = UIImage(named:SignArrey[row].engName)
        
    }
 
    @IBAction func gesture(_ sender: Any) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signTextField.inputView = picker
        picker.dataSource = self
        picker.delegate = self
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
