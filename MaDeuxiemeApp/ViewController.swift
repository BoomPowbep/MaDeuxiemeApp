//
//  ViewController.swift
//  MaDeuxiemeApp
//
//  Created by Mickaël Debalme on 18/03/2019.
//  Copyright © 2019 Mickaël Debalme. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = ""
        textField.text = ""
        
        textField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        print(textField.text)
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if string.isEmpty {
            label.text = String(label.text?.dropLast() ?? "")
        }
        else {
            label.text = (label.text ?? "") + string
        }
        return true
    }
    
    @IBAction func leftButtonClick(_ sender: Any) {
        UIView.animate(withDuration: 1.0) {
            self.myView.center = CGPoint(x: self.myView.center.x-100, y: self.myView.center.y)
            self.textField.center = CGPoint(x: self.textField.center.x, y: self.textField.center.y-120)
        }
    }
    
    
    @IBAction func rightButtonClick(_ sender: Any) {
        UIView.animate(withDuration: 1.0) {
            self.myView.center = CGPoint(x: self.myView.center.x+100, y: self.myView.center.y)
            self.textField.center = CGPoint(x: self.textField.center.x, y: self.textField.center.y+120)
        }
    }
}

