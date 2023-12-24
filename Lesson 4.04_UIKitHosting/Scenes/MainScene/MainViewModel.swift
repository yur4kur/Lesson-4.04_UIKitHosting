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

    @Published var game = Game()
    @Published var showAlert = false
     
    // MARK: - Public propeties
    
    var opacity: Float {
        computeScore() / 100
    }
    
    var score: Int {
        Int(computeScore())
    }
    
    // MARK: - Public methods
    
    func restart() {
        game.targetValue = Int.random(in: 0...100)
        game.currentValue = Float.random(in: 0...100)
    }
    
    // MARK: - Private methods
    
    private func computeScore() -> Float {
        let difference = abs(Float(game.targetValue) - game.currentValue)
        return 100 - difference
    }
}

