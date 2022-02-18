//
//  MadLibsViewController.swift
//  MadLibsExample
//
//  Created by lee bennett on 2/7/22.
//

import UIKit

class MadLibsViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var verbTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var lessOrMoreSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var numberSlider: UISlider!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var happyEndingSwitch: UISwitch!
    
    @IBOutlet weak var petStepper: UIStepper!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var animalSegmentControl: UISegmentedControl!
    
    let INDEX_MORE = 1

    // Don't use "Magic numbers", replace them with constants
    let INDEX_LESS = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lessOrMoreSegmentControl.selectedSegmentIndex = INDEX_MORE
    }
    
    
    @IBAction func lessOrMoreDidTapped(_ sender: UISegmentedControl) {
        
        containerView.isHidden = sender.selectedSegmentIndex == INDEX_LESS
        
//        // Hide the container view
//        if sender.selectedSegmentIndex == INDEX_LESS{
//            containerView.isHidden = true
//        // Show the container view
//        } else{
//            containerView.isHidden = false
//        }
    }
    
   
    @IBAction func createStoryDidTapped(_ sender: UIButton) {
    
        // At the age of 21, Bob took a trip to Austin with 3 pets in order to sing with moose. Bob decided to buy 42. Now they live happily ever after.
        
        let animal = animalSegmentControl.titleForSegment(at: animalSegmentControl.selectedSegmentIndex)!
        
        
        var story = "At the age of \(ageTextField.text!), \(nameTextField.text!) took a trip to \(cityTextField.text!) with \(Int(numberSlider.value)) pets in order to \(verbTextField.text!) with \(animal). \(nameTextField.text!) decided to buy \(Int(numberSlider.value))"
        
        if happyEndingSwitch.isOn{
            story += " Now they live happily ever after."
        } else{
            story += " It didn't end too well..."
        }
        
        print(story)
        
        
        // Let's create an alert!!!!
        let alert = UIAlertController(title: nil, message: story, preferredStyle: UIAlertController.Style.alert)
                
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default,
                                     handler: handleOkAction)
        
        alert.addAction(okButton)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    func handleOkAction(_ action: UIAlertAction) -> Void{
        print("\(#function )")
    }
    
    
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        print("\(#function)")
        numberLabel.text = "\(Int(numberSlider.value))"
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
}





