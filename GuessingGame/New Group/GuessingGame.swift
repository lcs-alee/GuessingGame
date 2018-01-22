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
    var valueToGuess : Int
    
    // MARK: Initializer(s)
    init() {
        //Generate the random number
        numberToGuess = Int(arc4random_uniform)
        
    }
    
    // MARK: Functions
    func checkGuessGiveFeedback(guess : Int) ->String {
        if guess < numberToGuess {
        return "Guess higher next time."
        }else if guess > numberToGuess {
        return "Guess lower next time."
        
    }else{
        retrun "guess correctly"
        }
        
    }
    
    
}
