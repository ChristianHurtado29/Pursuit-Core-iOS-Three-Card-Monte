//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var card0: UIButton!
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    
        @IBOutlet weak var mainLabel: UILabel!
        
        
    var cardArray = [0,1,2]
    
    @IBAction func cardChoice(_ sender: UIButton){
        
        switch sender.tag {
        case 0:
         let random1 = cardArray.randomElement()
                if random1 == 1{
                card0.setBackgroundImage(#imageLiteral(resourceName: "kingCard.jpg"), for: .normal)
            mainLabel.text = "Yay! 🤘🏾"
                } else {card0.setBackgroundImage(#imageLiteral(resourceName: "threeCard.png"), for: .normal)
                    mainLabel.text = "Wrong 😢"
                }
        case 1:

            let random1 = cardArray.randomElement()
            if random1 == 1{
            card1.setBackgroundImage(#imageLiteral(resourceName: "kingCard.jpg"), for: .normal)
        mainLabel.text = "Yay! 🤘🏾"
            } else {card1.setBackgroundImage(#imageLiteral(resourceName: "threeCard.png"), for: .normal)
                mainLabel.text = "Wrong 😢"
            }
        case 2:
        let random1 = cardArray.randomElement()
            if random1 == 1{
            card2.setBackgroundImage(#imageLiteral(resourceName: "kingCard.jpg"), for: .normal)
        mainLabel.text = "Yay! 🤘🏾"
            } else {card2.setBackgroundImage(#imageLiteral(resourceName: "threeCard.png"), for: .normal)
                mainLabel.text = "Wrong 😢"
            }
        default:
            return
        }
    }
    
    

    @IBAction func newGame(_ sender: UIButton) {
       
        mainLabel.text = "Find the King!"
        card0.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed.png"), for: .normal)
        card1.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed.png"), for: .normal)
        card2.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed.png"), for: .normal)
    }
    
}

//{
//    guard let cardChoice = sender.titleLabel?.text else {
//        return
//    }
//    switch cardChoice {
//    case "three":
//        mainLabel.text = "that's wrong!"
//    case "king":
//        mainLabel.text = "YOU FOUND THE KING!"
//    default:
//        print("")
//    }
//
//}
