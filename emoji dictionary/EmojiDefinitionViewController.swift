//
//  EmojiDefinitionViewController.swift
//  emoji dictionary
//
//  Created by Carmen Leander on 4/28/18.
//  Copyright © 2018 Carmen Leander. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    var emoji = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        
       // ["😀", "💩", "🏎", "💒", "🍎", "😇", "🤩", "😎", "🕍"]
        
        emojiLabel.text = emoji
        
        if emoji == "😀" {
            emojiDefinitionLabel.text = "Happy Face"
        }
        if emoji == "💩" {
            emojiDefinitionLabel.text = "Happy Poop"
        }
        if emoji == "🏎" {
            emojiDefinitionLabel.text = "Racecar Sponsored by Swift"
        }
        if emoji ==  "💒" {
            emojiDefinitionLabel.text = "Love Church"
        }
        if emoji ==  "🍎" {
            emojiDefinitionLabel.text = "Red Apple"
        }
        
    }

    

}
