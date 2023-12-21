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
    
   @Published var targetValue = Int.random(in: 1...100)
    @Published var currentValue: Float = 20
    @Published var showAlert = false
    @Published var score = 0
    
    // MARK: - Public propeties
    
    var opacity: Float {
        Float(currentValue / Float(targetValue))
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

