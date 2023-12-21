//
//  GameManager.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

final class GameManager: ObservableObject {
    let gameanager = GameManager()
    let targetValue = Game().targetValue
    
    //@Binding var currentValue: Double
    
    private init (){
       
    }
    
//    convenience init(currentValue: Double) {
//        self.currentValue = currentValue
//    }
    
//    func computeScore() -> Int {
//        let difference = abs(targetValue - lround(currentValue))
//        return 100 - difference
//    }
}
