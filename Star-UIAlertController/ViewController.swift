//
//  ViewController.swift
//  Star-UIAlertController
//
//  Created by Alex Hsieh on 2017/11/23.
//  Copyright © 2017年 Alex Hsieh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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

    
    @IBOutlet weak var starImage: UIImageView!
    @IBAction func starButton(_ sender: Any) {
        
        let StarAlert = UIAlertController(title: "星座選單", message: "請選擇您的星座", preferredStyle:.actionSheet)
        
        
        for i in 0..<SignArrey.count{
            let Sign = UIAlertAction(title: SignArrey[i].name, style: .default) { (action:UIAlertAction) in
                self.dismiss(animated: true, completion: nil)
                self.starImage.image = UIImage(named:self.SignArrey[i].engName)
            }
            StarAlert.addAction(Sign)
        }
        
        let end = UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
            self.starImage.image = UIImage(named:"")
            }
        
            StarAlert.addAction(end)
        
        
        present(StarAlert, animated: true, completion: nil)
    }
    
   
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

