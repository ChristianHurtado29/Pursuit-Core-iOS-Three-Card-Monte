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
                card0.setBackgroundImage(#imageLiteral(resourceName: "kingCard"), for: .normal)
            mainLabel.text = "Yay! 🤘🏾"
                    
                    [card0, card1, card2].forEach({$0?.setImage(UIImage(named: "cardBackRed"), for: .normal)})
                    [card0, card1, card2].forEach({$0?.isEnabled = false})
                    
                } else {card0.setBackgroundImage(#imageLiteral(resourceName: "threeCard"), for: .normal)
                    mainLabel.text = "Wrong 😢"
                    
                    [card0, card1, card2].forEach({$0?.setImage(UIImage(named: "cardBackRed"), for: .normal)})
                    [card0, card1, card2].forEach({$0?.isEnabled = false})
                }
        case 1:

            let random1 = cardArray.randomElement()
            if random1 == 1{
            card1.setBackgroundImage(#imageLiteral(resourceName: "kingCard"), for: .normal)
        mainLabel.text = "Yay! 🤘🏾"
                
                [card0, card1, card2].forEach({$0?.setImage(UIImage(named: "cardBackRed"), for: .normal)})
                [card0, card1, card2].forEach({$0?.isEnabled = false})
            } else {card1.setBackgroundImage(#imageLiteral(resourceName: "threeCard"), for: .normal)
                mainLabel.text = "Wrong 😢"
                
                [card0, card1, card2].forEach({$0?.setImage(UIImage(named: "cardBackRed"), for: .normal)})
                [card0, card1, card2].forEach({$0?.isEnabled = false})
            }
        case 2:
        let random1 = cardArray.randomElement()
            if random1 == 1{
            card2.setBackgroundImage(#imageLiteral(resourceName: "kingCard"), for: .normal)
        mainLabel.text = "Yay! 🤘🏾"
                
                [card0, card1, card2].forEach({$0?.setImage(UIImage(named: "cardBackRed"), for: .normal)})
                [card0, card1, card2].forEach({$0?.isEnabled = false})
            } else {card2.setBackgroundImage(#imageLiteral(resourceName: "threeCard"), for: .normal)
                mainLabel.text = "Wrong 😢"
                
                [card0, card1, card2].forEach({$0?.setImage(UIImage(named: "cardBackRed"), for: .normal)})
                [card0, card1, card2].forEach({$0?.isEnabled = false})

            }
        default:
            return
        }
    }
    
    @IBAction func newGame(_ sender: UIButton) {
       
        mainLabel.text = "Find the King!"
        card0.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed"), for: .normal)
        card1.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed"), for: .normal)
        card2.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed"), for: .normal)
        
        [card0, card1, card2].forEach({$0?.setImage(UIImage(named: "cardBackRed"), for: .normal)})
        [card0, card1, card2].forEach({$0?.isEnabled = true})
    }
}
