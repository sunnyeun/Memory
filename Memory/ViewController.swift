//
//  ViewController.swift
//  Memory
//
//  Created by Sunny Eun on 4/3/18.
//  Copyright © 2018 Sunny Eun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    var symbols = [
        "😉",
        "🤨",
        "😉",
        "🤨"
    ]
    
    //var randomIndex = Int(arc4random_uniform(UInt32(symbols.count)))
    //var randomIndex = arc4random_uniform(UInt32(self.symbols.count))
    var selectedCard: CardButton?
    

    //When a card is flipped
    @IBAction func flipCard(_ sender: CardButton) {
        
        // Randomize the symbols.
        let symbol = symbols[Int(arc4random() % UInt32(sender.tag))]
        //let symbol = symbols[randomIndex]
        let senderTitle = sender.title(for: .normal)
        
        if senderTitle == nil || senderTitle == "" {
            if let card = selectedCard {
                
                // If tapped card is same symbol as already flipped one, then flip both.
                if card.title(for: .normal) == symbol {
                    sender.setTitle(symbol, for: .normal)
                    
                    // UIAlert for when all cards are matched.
                    let alertController = UIAlertController(title: "Great Job!", message: "You matched all cards.", preferredStyle: .alert)
                    
                    let OKButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (action:UIAlertAction) in print("You've pressed OK");
                    }
                    
                    // UIAlert with OK button pop up.
                    alertController.addAction(OKButton)
                    self.present(alertController, animated: true, completion: nil)
                    
                } else { // Otherwise, we flip both back.
                    card.setTitle("", for: .normal)
     
                }
              
                selectedCard = nil

            } else { // If we didn't have any flipped card, flip it and assign it to selectedCard.
                sender.setTitle(symbol, for: .normal)
                selectedCard = sender
                
            }
        }
    }
}





