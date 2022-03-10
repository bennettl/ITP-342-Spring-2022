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
    
    let quotesFilePath: String
    
    private init(){
        
        // Get the path of the document folder
        let documentFolderPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        quotesFilePath = "\(documentFolderPath.first!)/quotes.json"
        
        load()
    }
    
    private var quotes = [
        Quote(message: "People Don't Read Anymore", author: "Steve Jobs"),
        Quote(message: "Wow!", author: "Owen Wilson"),
        Quote(message: "One small step for man, one giant leap for mankind", author: "Neil Armstrong"),
        Quote(message: "How are you all doing today?", author: "Bennett"),
        Quote(message: "Anyone else for any other quotes?", author: "Bennett")
    ]
    
    // Take our array of quotes, encode them from an array of native swift objects into a JSON array
    func save(){
        let encoder = JSONEncoder()
        do{
            let data = try encoder.encode(quotes)
            // Convert data to JSON string
            let str = String(data: data, encoding: .utf8)!
            // Get the path of the document folder
            let filePath = URL(string: quotesFilePath)!
            
            try! str.write(to: filePath, atomically: true, encoding: .utf8)
            
        } catch{
            print("there is an error with encoding \(error)")
        }
    }
    
    // Takes the JSON array, decodes them into Swift array
    func load(){
        do{
            if !FileManager.default.fileExists(atPath: quotesFilePath){
                return
            }
            let filePath = URL(string: quotesFilePath)!
            let data = try Data(contentsOf: filePath)
            let decoder = JSONDecoder()
            self.quotes = try decoder.decode([Quote].self, from: data)
        } catch{
            print("there is an error with encoding \(error)")
        }
        
    }
    
    func create(message: String, author: String) -> Quote{
        let quote = Quote(message: message, author: author)
        quotes.append(quote)
        
        save()
        
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
        save()
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
