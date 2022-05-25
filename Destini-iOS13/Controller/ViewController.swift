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
    
    var stories: [Story] = []
    var track: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stories.append(Story(title: "You see a fork in the road.",
                             choice1: "Take a left.",
                             choice2: "Take a right."))
        stories.append(Story(title: "You see a tiger.",
                             choice1: "Shout for help.",
                             choice2: "Play dead."))
        stories.append(Story(title: "You find a treasure chest.",
                             choice1: "Open it.",
                             choice2: "Check for traps."))
        
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender == choice1Button {
            track = 1
        } else {
            track = 2
        }
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = stories[track].title
        choice1Button.setTitle(stories[track].choice1, for: .normal)
        choice2Button.setTitle(stories[track].choice2, for: .normal)
    }
}
