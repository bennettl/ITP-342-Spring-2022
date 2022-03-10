//
//  RandomQuoteViewController.swift
//  RandomQuoteGenerator
//
//  Created by lee bennett on 3/2/22.
//

import UIKit

class RandomQuoteViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let USER_DEFAULTS_FAVORITE_NUMBER = "favoriteNumber"
        
    override func viewDidLoad() {
        super.viewDidLoad()
                
        messageLabel.text = nil
        titleLabel.text = nil
        
        // Load - retreving
        let favoriteNumber = UserDefaults.standard.integer(forKey: USER_DEFAULTS_FAVORITE_NUMBER)
        
        print("My favorite number is \(favoriteNumber)")
        
        // Save
        UserDefaults.standard.set(10, forKey: USER_DEFAULTS_FAVORITE_NUMBER)
        
        
        
        
    }
  
    
    @IBAction func showRandomQuoteDidTapped(_ sender: UIButton) {
        if let quote = QuoteService.shared.getRandomQuote(){
            messageLabel.text = quote.message
            titleLabel.text = quote.author
        }
    }


}
