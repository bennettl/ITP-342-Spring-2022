//
//  NewQuoteViewController.swift
//  RandomQuoteGenerator
//
//  Created by lee bennett on 2/16/22.
//

import UIKit

class NewQuoteViewController: UIViewController {
    
    @IBOutlet weak var authorTextField: UITextField!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createDidTapped(_ sender: UIButton) {
        let quote = QuoteService.shared.create(message: messageTextField.text!, author: authorTextField.text!)
        
        print("\(quote.author) \(quote.message)")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
