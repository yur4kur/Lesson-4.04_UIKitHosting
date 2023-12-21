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
        Float(currentValue / Float(targetValue))
    }
    
    // MARK: - Initializers
    
    init() {
        self.targetValue = game.targetValue
        self.currentValue = game.currentValue
        self.score = game.score
    }
    
    // MARK: - Public methods
    
    func getScore() {
        let score = computeScore()
        self.score = score
    }
    
    func restart() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
    }
    
    // MARK: - Private methods
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(Double(currentValue)))
        return 100 - difference
    }
}

