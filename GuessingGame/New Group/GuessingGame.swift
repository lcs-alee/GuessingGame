//
//  GuessingGame.swift
//  GuessingGame
//
//  Created by Lee, Andrew on 2018-01-19.
//  Copyright © 2018 Lee, Andrew. All rights reserved.
//

import Foundation

struct GuessingGame {
    
    // MARK: Properties
    var numberToGuess : Int
    var numbersGuessed : [Int]
    
    // MARK: Initializer(s)
    init() {
       numberToGuess = Int(arc4random_uniform(501)) // Generate a number between 0 and 500 (but not 501)
        
        // make an empty list of number guessed
        numbersGuessed = []
    }
    
    // Cjecls the guess made
    mutating func compareGuessMade(providedGuess : Int) -> String {

        // Add the provided guess to the list of guesses made
        numbersGuessed.append(providedGuess)
        
        
        
        // Compare the provided guess to the random uumber
        if providedGuess < numberToGuess {
            return "Guess higher!"
        } else if providedGuess > numberToGuess {
            return "Guess lower!"
        }else {
            return "Yay! You guessed it!"
        }

    }


}
