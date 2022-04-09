//
//  ViewController.swift
//  PickersDemo
//
//  Created by lee bennett on 4/4/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var schoolPicker: UIPickerView!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    let schools = ["UCLA", "USC", "UCSF", "UCSD", "UCI", "Berkeley"]
    
    let ratings = ["Disappointing", "Below Expectations", "Meet Expectations", "Exceeds Expectations", "Distinguished"]
    
    let COMPONENT_INDEX_SCHOOL = 0

    let COMPONENT_INDEX_RATING = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        datePicker.date = Date()
        datePicker.maximumDate = Date()
    }

    @IBAction func submitDidTapped(_ sender: UIButton) {
        print("\(datePicker.date)")
        
        let schoolIndex = schoolPicker.selectedRow(inComponent: COMPONENT_INDEX_SCHOOL)
        let ratingIndex = schoolPicker.selectedRow(inComponent: COMPONENT_INDEX_RATING)
        print("schoolIndex \(schools[schoolIndex]) ratingIndex \(ratingIndex)")
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == COMPONENT_INDEX_SCHOOL {
            return schools.count
        } else {
            return ratings.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return schools[row]
        } else {
            return ratings[row]
        }
    }
    
}

