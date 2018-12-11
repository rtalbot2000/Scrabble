//
//  ViewController.swift
//  Scrabble
//
//  Created by Ryan Talbot on 12/7/18.
//  Copyright © 2018 Ryan Talbot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var blueSpaces: [UIButton]!
    
    @IBOutlet var greenSpaces: [UIButton]!
    @IBOutlet var orangeSpaces: [UIButton]!
    
    @IBOutlet var redSpaces2: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //Get tile from player class
    
    //prompt player where to place the tile
    
    // Create total scoring
    
    // Implement multiplier into scoring
    
    //repeat 

    @IBAction func buttonPressed(_ sender: UIButton) {
        var multiplier : Double
        
        if(sender.backgroundColor == UIColor.orange) {
            multiplier = 3
        }
        
    }
    
}

