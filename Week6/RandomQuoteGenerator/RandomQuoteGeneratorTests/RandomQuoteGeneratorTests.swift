//
//  RandomQuoteGeneratorTests.swift
//  RandomQuoteGeneratorTests
//
//  Created by lee bennett on 2/16/22.
//

import XCTest
@testable import RandomQuoteGenerator

class RandomQuoteGeneratorTests: XCTestCase {

    override class func setUp() {
        print("class \(#function)")
    }
    
    override func setUp() {
        print("instance method \(#function)")
        
    }
    
    override class func tearDown() {
        
    }
    
    func testAddingQuote() {
        
//        Process to testing
//
//        1. Setting up the context
//            - initialize variables / state, going to a specific screen
        
        let quoteService = QuoteService.shared

//
//        2. Perform "an" action
//            - click a button, execute a method
        
        let message = "hey"
        let author = "hi"
        let beforeCount = quoteService.numberOfQuotes()
        let quote = quoteService.create(message: message, author: author)
        let afterCount = quoteService.numberOfQuotes()
//
//        3. Validate that the expected result matches the actual result
        XCTAssertEqual(beforeCount + 1, afterCount)
        XCTAssertEqual(quote.message, message)
        XCTAssertEqual(quote.author, author)
    }
    
    func testListingQuotes(){
        
        let quoteService = QuoteService.shared
        
        let quotes = quoteService.list()
        
        XCTAssertGreaterThan(quotes.count, 0)
        XCTAssertEqual(quotes.count, quoteService.numberOfQuotes())

    }

}
