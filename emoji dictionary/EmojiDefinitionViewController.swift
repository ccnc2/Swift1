//
//  EmojiDefinitionViewController.swift
//  emoji dictionary
//
//  Created by Carmen Leander on 4/28/18.
//  Copyright © 2018 Carmen Leander. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var catergoryLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.emojiLook
        emojiDefinitionLabel.text = emoji.emojiDefinition
        birthLabel.text = "Released: \(emoji.birthYear)"
        catergoryLabel.text = "Category: \(emoji.catergory)"
        
        /*
       // ["😀", "💩", "🏎", "💒", "🍎", "😇", "🤩", "😎", "🕍"]
        
        emojiLabel.text = emoji
        
        if emoji == "😀" {
            emojiDefinitionLabel.text = "Happy Face"
            birthLabel.text = "Birth Year: 2010"
            catergoryLabel.text = "Catergory: Faces"
        }
        if emoji == "💩" {
            emojiDefinitionLabel.text = "Happy Poop"
            birthLabel.text = "Birth Year: 2011"
            catergoryLabel.text = "Category: Faces"
        }
        if emoji == "🏎" {
            emojiDefinitionLabel.text = "Racecar Sponsored by Swift "
            birthLabel.text = "Birth Year: 2016"
            catergoryLabel.text = "Category: Transporation"
        }
        if emoji ==  "💒" {
            emojiDefinitionLabel.text = "Love Church"
            birthLabel.text = "2017"
            catergoryLabel.text = "Buildings"
        }
        if emoji ==  "🍎" {
            emojiDefinitionLabel.text = "Red Apple"
            birthLabel.text = "2013"
            catergoryLabel.text = "Food"
        }
 */
        
    }

    

}
