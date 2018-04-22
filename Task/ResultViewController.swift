//
//  ResultViewController.swift
//  Task
//
//  Created by SWUCOMPUTER on 2018. 4. 22..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var display: UILabel!
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var answer: UILabel!
    @IBOutlet var infoLabel: UILabel!
    var info: String?
    let Array: Array<String> = ["과일", "떡", "수정구슬", "현찰"]
  
    @IBAction func result(_ sender: UIButton) {
        let selected: String = Array[self.pickerView.selectedRow(inComponent: 0)]
        if selected == "과일"{
            answer.text = "생각이 많고 진지한 연상타입이 취향!"
        }
        if selected == "떡"{
            answer.text = "화술과 매너가 좋은 타입이 취향!"
        }
        if selected == "수정구슬"{
            answer.text = "정렬적이고 열중하는 타입이 취향!"
        }
        if selected == "현찰"{
            answer.text = "부드럽고 따듯한 타입이 취향!"
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array[row]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let contentString = info{
            infoLabel.text = contentString
        }
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
