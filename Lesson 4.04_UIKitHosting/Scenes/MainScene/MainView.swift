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
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            VStack {
                
                // MARK: Task Text
                TaskTextView(target: $mainViewModel.targetValue)

                HStack {
                    
                    // MARK: Slider group
                    Text(Constants.minSliderValue)
                    
                    UISliderView(
                        currentValue: $mainViewModel.currentValue,
                        opacity: mainViewModel.opacity
                    )
                        
                    Text(Constants.maxSliderValue)
                }
                .padding()
                
                // MARK: Buttons group
                CheckMeButtonView(
                    showAlert: $mainViewModel.showAlert,
                    score: mainViewModel.score
                )
                
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
