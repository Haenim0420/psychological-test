//
//  ViewController.swift
//  Task
//
//  Created by SWUCOMPUTER on 2018. 4. 22..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var lableDisplay: UILabel!
    @IBOutlet var myTextField: UITextField!
    @IBOutlet var birthday: UILabel!
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { textField.resignFirstResponder()
        lableDisplay.text = textField.text
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult" {
            let destVC = segue.destination as! ResultViewController
            let writetext: String! = lableDisplay.text
            destVC.title = writetext
            var outString: String = "이샹형에 관한 테스트입니다.\n"
            outString += writetext
            outString += "님 안녕하세요"
            destVC.info = outString
        } }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

