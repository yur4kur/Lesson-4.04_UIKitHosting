//
//  MainView.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

// MARK: - MainView

struct MainView: View {
    
    // MARK:  - Wrapped properties
    
    @StateObject private var mainViewModel = MainViewModel()
    @State private var score = 92
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            VStack {
                TaskTextView(target: $mainViewModel.targetValue)

                HStack {
                    Text(Constants.minSliderValue)
                    UISliderView(currentValue: $mainViewModel.currentValue)
                    Text(Constants.maxSliderValue)
                }
                .padding()
                
                CheckMeButtonView(showAlert: $mainViewModel.showAlert, score: $score) 
                
                RestartButtonView {
                    mainViewModel.restart()
                }
                .padding()
            }
        }
        
    }
}

// MARK: - Preview

#Preview {
    MainView()
}
