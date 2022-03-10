//
//  QuotesViewController.swift
//  RandomQuoteGenerator
//
//  Created by lee bennett on 3/7/22.
//

import UIKit

class QuotesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        tableView.reloadData()
//    }
    
    @IBAction func editDidTapped(_ sender: UIBarButtonItem) {
        if tableView.isEditing{
            tableView.isEditing = false
            sender.title = "Edit"
        } else{
            tableView.isEditing = true
            sender.title = "Done"
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        // User wants to delete
        
        if editingStyle == .delete{
            
            // Remove the data from the model
            QuoteService.shared.delete(at: indexPath.row)
            
            // Do a fancy fade out animation to remove the cell
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return QuoteService.shared.numberOfQuotes()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Create the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuoteCell")!
        
        // Modify the cell
        let quote = QuoteService.shared.getQuote(at: indexPath.row)
        
        cell.textLabel?.text = quote.message
        cell.detailTextLabel?.text = quote.author
        
        // Return the cell
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? NewQuoteViewController{
            vc.defaultAuthor = "testing"
            vc.onNewQuoteAdded = {
                self.tableView.reloadData()
            }
        }
    }
}
