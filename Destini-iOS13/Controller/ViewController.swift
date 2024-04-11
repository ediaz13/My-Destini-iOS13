//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.getStory()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)

    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        storyLabel.text = storyBrain.getStory()
        
        var answerChoice1 = storyBrain.getChoice1()
        var answerChoice2 = storyBrain.getChoice2()
        
        //Need to fetch the answers and update the button titles using the setTitle method.
        choice1Button.setTitle(answerChoice1, for: .normal)
        choice2Button.setTitle(answerChoice2, for: .normal)
        
        
        choice1Button.backgroundColor = UIColor.clear
        choice2Button.backgroundColor = UIColor.clear
        
    }
    


}

