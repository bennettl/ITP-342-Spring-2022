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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageLabel.text = nil
        titleLabel.text = nil
    }
    

    @IBAction func showRandomQuoteDidTapped(_ sender: UIButton) {
        if let quote = QuoteService.shared.getRandomQuote(){
            messageLabel.text = quote.message
            titleLabel.text = quote.author
        }
    }


}
