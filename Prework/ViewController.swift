//
//  ViewController.swift
//  Prework
//
//  Created by Bhuvni Shah on 1/5/21.
//

// one for each scren

import UIKit

class ViewController: UIViewController {
    
    // outlets
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    // default colors
    var backgroundColor: UIColor!
    var textColor: UIColor!
    
    // orginal setup
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // saves the original color pallete
        backgroundColor = view.backgroundColor
        textColor = textLabel.textColor
    }

    // if the text is white change it to cream
    // if text is cream change it to white
    @IBAction func didTapButton(_ sender: Any) {
        if (textLabel.textColor == textColor){
            textLabel.textColor = #colorLiteral(red: 0.8096089959, green: 0.6955664754, blue: 0.6041703224, alpha: 1)
        }
        else{
            textLabel.textColor = textColor
        }
    }
    
    // if background screen is white change it to cream
    // if background screen is cream change it to white
    @IBAction func didTapViewButton(_ sender: Any) {
        if (view.backgroundColor == backgroundColor){
            view.backgroundColor = #colorLiteral(red: 0.8096089959, green: 0.6955664754, blue: 0.6041703224, alpha: 1)
        }
        else{
            view.backgroundColor = backgroundColor
        }
    }
    
    // changes the test in the lbel to the user input or good bye of the field is empty
    @IBAction func didTapTextButton(_ sender: Any) {
        if(textField.text == ""){
            textLabel.text = "good bye!"
        }
        else{
            textLabel.text = textField.text
        }
        textField.text = ""
        view.endEditing(true)
    }
    
    // resets the screen to original color pallete
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "hello!"
        textLabel.textColor = textColor
        view.backgroundColor = backgroundColor
    }
    
}

