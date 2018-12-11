//
//  Tile.swift
//  Scrabble
//
//  Created by Ryan Talbot on 12/7/18.
//  Copyright © 2018 Ryan Talbot. All rights reserved.
//

import Foundation
import UIKit

class Tile {
    
    private let char: Character
    private var score: Int
    private let image: UIImage
    
    init(char: Character, score: Int, image: UIImage) {
        self.score = score
        self.image = image
    }
    
    func getCharacter() -> Character {
        return char
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getImage() -> UIImage {
        return image
    }
    
}
