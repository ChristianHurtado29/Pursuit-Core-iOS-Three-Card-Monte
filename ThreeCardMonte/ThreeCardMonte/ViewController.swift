//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    
    
    @IBAction func cardChoice(_ sender: UIButton) {
        guard let cardChoice = sender.titleLabel?.text else {
            return
        }
        switch cardChoice {
        case "three":
            mainLabel.text = "that's wrong!"
        case "king":
            mainLabel.text = "YOU FOUND THE KING!"
        default:
            print("")
        }
        
    }
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }


}

