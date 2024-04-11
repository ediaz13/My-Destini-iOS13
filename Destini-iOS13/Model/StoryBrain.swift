//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0

    let stories = [
        Story(story0: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(story0: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(story0: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]

    func getStory() -> String {
        return stories[storyNumber].story0
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == stories[storyNumber].choice1 {
            storyNumber = 1
            return true
        } else {
            storyNumber = 2
            return false
        }
    }
    
    mutating func nextStory(userChoice : String) {
        if userChoice == stories[storyNumber].choice1 {
            storyNumber = 1
        } else {
            storyNumber = 2
        }
    
    }
}

    



