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
    
    private var quotes = [
        Quote(message: "People Don't Read Anymore", author: "Steve Jobs"),
        Quote(message: "Wow!", author: "Owen Wilson"),
        Quote(message: "One small step for man, one giant leap for mankind", author: "Neil Armstrong"),
        Quote(message: "How are you all doing today?", author: "Bennett"),
        Quote(message: "Anyone else for any other quotes?", author: "Bennett")
    ]
    
    func create(message: String, author: String) -> Quote{
        let quote = Quote(message: message, author: author)
        quotes.append(quote)
        return quote
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
    
    func getRandomQuote() -> Quote?{
        // Validate
        if quotes.isEmpty{
            return nil
        }
        
        return quotes[Int.random(in: 0..<quotes.count)]
        
    }
    
}
