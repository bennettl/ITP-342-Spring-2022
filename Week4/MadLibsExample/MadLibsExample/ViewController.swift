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
        
        print("\(#function)")
        
        firstNameTextField.becomeFirstResponder()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(#function)")
    }
    
    @IBAction func backgroundButtonDidTapped(_ sender: UIButton) {
        firstNameTextField.resignFirstResponder()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    @IBAction func userDidReturn(_ sender: Any) {
        print("userDidReturn")
        firstNameTextField.resignFirstResponder()
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

