//
//  RandomQuoteGeneratorTests.swift
//  RandomQuoteGeneratorTests
//
//  Created by lee bennett on 2/16/22.
//

import XCTest
@testable import RandomQuoteGenerator

class RandomQuoteGeneratorTests: XCTestCase {


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
        quoteService.create(message: message, author: author)
//
//
//        3. Validate that the expected result matches the actual result
        XCTAssertEqual(quoteService.numberOfQuotes(), 1)
        XCTAssertEqual(quoteService.getQuote(at: 0).message, message)
        XCTAssertEqual(quoteService.getQuote(at: 0).author, author)

        
    }

}
