//
//  Player.swift
//  RatingsTutorialRayWenderlich
//
//  Created by Kristopher Kane on 6/9/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import Foundation

class Player: NSObject {
    var name: String
    var game: String
    var rating: Int
    
    init(name: String, game: String, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
        super.init()
    }
}