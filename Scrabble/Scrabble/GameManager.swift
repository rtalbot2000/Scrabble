//
//  GameManager.swift
//  Scrabble
//
//  Created by Ryan Talbot on 12/7/18.
//  Copyright © 2018 Ryan Talbot. All rights reserved.
//

import Foundation
import UIKit

class GameManager {
    
    private var tiles : [Tile]
    private var dictionary : [String]
   
    private var p1 : Player
    private var p2 : Player
    private var current : Player
    
    init() {
        tiles = []
        dictionary = []
        
        p1 = Player()
        p2 = Player()
        current = p1
        
        fillArray()
        fillDictionary()
        
        giveCards(player: p1)
        giveCards(player: p2)
    }
    
    func fillArray() {
        for _ in 1...12 {
            tiles.append(Tile(char: "E", score: 1, image: UIImage(named: "E")!))
        }
        
        for _ in 1...9 {
            tiles.append(Tile(char: "A", score: 1, image: UIImage(named: "A")!))
            tiles.append(Tile(char: "I", score: 1, image: UIImage(named: "I")!))
        }
        
        for _ in 1...8 {
            tiles.append(Tile(char: "O", score: 1, image: UIImage(named: "O")!))
        }
        
        for _ in 1...7 {
            tiles.append(Tile(char: " ", score: 0, image: UIImage(named: "Blank")!))
        }
        
        for _ in 1...6 {
            tiles.append(Tile(char: "N", score: 1, image: UIImage(named: "N")!))
            tiles.append(Tile(char: "R", score: 1, image: UIImage(named: "R")!))
            tiles.append(Tile(char: "T", score: 1, image: UIImage(named: "T")!))
        }
        
        for _ in 1...4 {
            tiles.append(Tile(char: "D", score: 2, image: UIImage(named: "D")!))
            tiles.append(Tile(char: "L", score: 1, image: UIImage(named: "L")!))
            tiles.append(Tile(char: "S", score: 1, image: UIImage(named: "S")!))
            tiles.append(Tile(char: "U", score: 1, image: UIImage(named: "U")!))
        }
        
        for _ in 1...2 {
            tiles.append(Tile(char: "B", score: 3, image: UIImage(named: "B")!))
            tiles.append(Tile(char: "C", score: 3, image: UIImage(named: "C")!))
            tiles.append(Tile(char: "F", score: 4, image: UIImage(named: "F")!))
            tiles.append(Tile(char: "H", score: 4, image: UIImage(named: "H")!))
            tiles.append(Tile(char: "M", score: 3, image: UIImage(named: "M")!))
            tiles.append(Tile(char: "P", score: 3, image: UIImage(named: "P")!))
            tiles.append(Tile(char: "W", score: 4, image: UIImage(named: "W")!))
            tiles.append(Tile(char: "Y", score: 4, image: UIImage(named: "Y")!))
        }
        
        tiles.append(Tile(char: "J", score: 8, image: UIImage(named: "J")!))
        tiles.append(Tile(char: "K", score: 5, image: UIImage(named: "K")!))
        tiles.append(Tile(char: "Q", score: 10, image: UIImage(named: "Q")!))
        tiles.append(Tile(char: "X", score: 8, image: UIImage(named: "X")!))
        tiles.append(Tile(char: "Z", score: 10, image: UIImage(named: "Z")!))
    }
    
    func fillDictionary() {
        if let path = Bundle.main.path(forResource: "Dictionary", ofType: "txt") {
            do {
                let data = try String(contentsOfFile: path, encoding: .utf8)
                let myStrings = data.components(separatedBy: .newlines)
                
                var i = 0
                
                while(i < myStrings.count) {
                    dictionary.append(myStrings[i])
                    i += 2
                }
            } catch {
                print(error)
            }
        }
    }
    
    func giveCards(player p : Player) {
        while(p.getTiles().count < 7 && !tiles.isEmpty) {
            let t = tiles.remove(at: Int.random(in: 0..<tiles.count))
            p.addTile(tile: t)
        }
    }
    
}
