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
    
    @Published var targetValue = Game().targetValue
    @Published var currentValue: Float = 33.2
    @Published var showAlert = false
    
    //var score: Int
    
    // MARK: - Public methods
    
    func getScore() {
        
    }
    
    func restart() {
        targetValue = Game().targetValue
        currentValue = 50
    }
    
    // MARK: - Private methods
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(Double(currentValue)))
        return 100 - difference
    }
//    argetValue — целевое значение
//    currentValue — текущее значение слайдера
//    }
}

