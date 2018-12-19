//
//  Player.swift
//  Scrabble
//
//  Created by Mehta, Vidhi on 12/13/18.
//  Copyright © 2018 Ryan Talbot. All rights reserved.
//

import Foundation

class Player {
    private var tiles: [Tile]
    private var score: Int
    
    init() {
        tiles = []
        score = 0;
    }
    
    func addTile(tile t : Tile) {
        tiles.append(t)
    }
    
    func getTiles() -> [Tile] {
        return tiles
    }
    
}
