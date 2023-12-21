//
//  Game.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

// MARK: - Game

struct Game {
    
    // MARK: - Public properties
    
    let targetValue: Int
    let currentValue: Float
    let score: Int
    
    // MARK: - Initializers
    
    init() {
        targetValue = Int.random(in: 0...100)
        currentValue = 30
        score = 0
    }
}
