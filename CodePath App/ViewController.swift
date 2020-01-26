//
//  ViewController.swift
//  CodePath App
//
//  Created by Michael Nguyen on 1/12/20.
//  Copyright © 2020 Michael Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor
    }

    @IBAction func didTapButton(_ sender: Any) {
        textLabel.textColor = UIColor.green
    }


    @IBAction func didTapView(_ sender: Any) {
        view.backgroundColor = UIColor.yellow
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello World!"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.black
        
    }
    @IBAction func didTapTextButton(_ sender: Any) {
        if (textField.text != ""){
            textLabel.text = textField.text
        }
        else{
            textLabel.text = "Goodbye!"
        }
        textField.text?.removeAll()
        view.endEditing(true)
    }
}

