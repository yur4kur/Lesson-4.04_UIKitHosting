//
//  Game.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

// MARK: - Game

struct Game {
    
    // MARK: - Public properties
    
    var targetValue = Int.random(in: 0...100)
    var currentValue = Float.random(in: 0...100)
}
