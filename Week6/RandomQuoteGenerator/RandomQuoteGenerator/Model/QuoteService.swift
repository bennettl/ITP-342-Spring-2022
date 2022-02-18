//
//  QuoteService.swift
//  RandomQuoteGenerator
//
//  Created by lee bennett on 2/16/22.
//

import Foundation



// Creating, updating, deleting, reading quotes
class QuoteService{
    
    
    static let shared = QuoteService()
    
    private init(){
        
    }
    
    var quotes = [Quote]()
    
    func create(message: String, author: String) -> Quote{
        let quote = Quote(message: message, author: author)
        quotes.append(quote)
        
        return Quote(message: "", author: "")
    }
    
    func list() -> [Quote]{
        return quotes
    }
    
    func numberOfQuotes() -> Int{
        return quotes.count
    }
    
    func delete(at index: Int){
        quotes.remove(at: index)
    }
    
    func getQuote(at index: Int) -> Quote{
        return quotes[index]
    }
    
}
