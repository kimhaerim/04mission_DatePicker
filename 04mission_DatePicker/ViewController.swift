//
//  ViewController.swift
//  04mission_DatePicker
//
//  Created by 김해림 on 2021/02/24.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime: String?
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
                
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblPickerTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
                
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
   //        lblCurrentTime.text = String(count)
   //        count = count + 1
           
           let date = NSDate()
           
           let formatter = DateFormatter()
           formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
           lblCurrentTime.text = "현재시간 : " + formatter.string(from: date as Date)

           formatter.dateFormat = "hh:mm aaa"
           let currentTime = formatter.string(from: date as Date)
           
           if (alarmTime == currentTime) {
               view.backgroundColor = UIColor.red
           }
           else {
               view.backgroundColor = UIColor.white
           }
    }
}


