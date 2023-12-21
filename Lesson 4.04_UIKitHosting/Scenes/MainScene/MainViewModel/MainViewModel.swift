//
//  MainViewModel.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

// MARK: - MainViewModel

final class MainViewModel: ObservableObject {
    
    // MARK:  - Wrapped properties
    
    @Published var targetValue: Int
    @Published var currentValue: Float
    @Published var score: Int
    @Published var showAlert = false
    
    // MARK: - Private properties
    
    private let game = Game()
    
    // MARK: - Public propeties
    
    var opacity: Float {
        computeScore() / 100
    }
    
    // MARK: - Initializers
    
    init() {
        self.targetValue = game.targetValue
        self.currentValue = game.currentValue
        self.score = game.score
    }
    
    // MARK: - Public methods
    
    func getScore() {
        let score = Int(computeScore())
        self.score = score
    }
    
    func restart() {
        targetValue = Int.random(in: 0...100)
        currentValue = Float.random(in: 0...100)
    }
    
    // MARK: - Private methods
    
    private func computeScore() -> Float {
        let difference = abs(Float(targetValue) - currentValue)
        return 100 - difference
    }
}

