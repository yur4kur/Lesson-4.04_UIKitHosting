//
//  Game.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

struct Game {
    let targetValue: Int
    
    init() {
        targetValue = Int.random(in: 0...100)
    }
}
