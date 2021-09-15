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
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.title(for: .normal) == storyBrain.stories[storyBrain.storyNumber].choice1 {
            storyBrain.storyNumber = storyBrain.stories[storyBrain.storyNumber].choice1Destination
        } else {
            storyBrain.storyNumber = storyBrain.stories[storyBrain.storyNumber].choice2Destination
        }
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    func updateUI() {
        storyLabel.text = storyBrain.stories[storyBrain.storyNumber].title
        choice1Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice2, for: .normal)
    }
}

