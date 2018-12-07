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
    
    private var score: Int
    private let image: UIImage
    
    init(score: Int, image: UIImage) {
        self.score = score
        self.image = image
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getImage() -> UIImage {
        return image
    }
    
}
