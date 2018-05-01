//
//  EmojiTableViewController.swift
//  emoji dictionary
//
//  Created by Carmen Leander on 4/27/18.
//  Copyright © 2018 Carmen Leander. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis : [Emoji] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojis = createEmojis()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = "\(emoji.emojiLook) - \(emoji.catergory)"
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        emojiDefVC.emoji = sender as! Emoji
    }
    
    func createEmojis() -> [Emoji] {
        let smiley = Emoji()
        smiley.emojiLook = "😀"
        smiley.emojiDefinition = "Happy Face"
        smiley.birthYear = 2010
        smiley.catergory = "Faces"
        
        let apple = Emoji()
        apple.emojiLook = "🍎"
        apple.emojiDefinition = "Apple"
        apple.birthYear = 2013
        apple.catergory = "Food"
        
        return [smiley, apple]
    }

}
