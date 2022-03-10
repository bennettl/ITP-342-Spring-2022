//
//  NewQuoteViewController.swift
//  RandomQuoteGenerator
//
//  Created by lee bennett on 2/16/22.
//

import UIKit

class NewQuoteViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var authorTextField: UITextField!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var createButton: UIButton!
    
    var defaultAuthor: String?
    
    var onNewQuoteAdded: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createButton.isEnabled = false
        
        authorTextField.text = defaultAuthor
    }
    
    @IBAction func createDidTapped(_ sender: UIButton) {
        let quote = QuoteService.shared.create(message: messageTextField.text!, author: authorTextField.text!)
        
        print("\(quote.author) \(quote.message)")
        
        navigationController?.popViewController(animated: true)
        
        onNewQuoteAdded?()
    }
    

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        let newString = (textField.text! as NSString).replacingCharacters(in: range, with: string)

        let author = textField == authorTextField ? newString : authorTextField.text!
        let message = textField == messageTextField ? newString : messageTextField.text!
        
        if !author.isEmpty && !message.isEmpty{
            createButton.isEnabled = true
        } else{
            createButton.isEnabled = false
        }
        print("author \(author)")
        print("message \(message)")
        
//        print("authorTextField.text \(authorTextField.text)")
//        print("messageTextField.text \(messageTextField.text)")

        return true
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
