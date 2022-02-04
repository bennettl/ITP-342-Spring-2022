//
//  ViewController.swift
//  MadLibsExample
//
//  Created by lee bennett on 2/2/22.
//

import UIKit

class ViewController : UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameTextField.becomeFirstResponder()
    }
    
    @IBAction func backgroundButtonDidTapped(_ sender: UIButton) {
        firstNameTextField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        <#code#>
    }
    
    @IBAction func userDidTappedYes(_ sender: UIButton) {
        
        let text = firstNameTextField.text!
        
        if text.isEmpty{
            mainLabel.text = "Fight On!"
        } else{
            mainLabel.text = "Fight On, \(text)"
        }

        firstNameTextField.resignFirstResponder()
    }
    
}

