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

    @Published var currentValue: Float
    @Published var showAlert = false
    
    // MARK: - Private properties
    
    private var game = Game()
    
    // MARK: - Public propeties
    
    var targetValue: Int
    
    var opacity: Float {
        computeScore() / 100
    }
    
    var score: Int {
        Int(computeScore())
    }
    
    // MARK: - Initializers
    
    init() {
        self.targetValue = game.targetValue
        self.currentValue = game.currentValue
    }
    
    // MARK: - Public methods
    
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

