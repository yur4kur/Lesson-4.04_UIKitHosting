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
                TaskTextView(target: $mainViewModel.target)

                HStack {
                    Text(Constants.minSliderValue)
                    UISliderView()
                    Text(Constants.maxSliderValue)
                }
                .padding()
                
                CheckMeButtonView(showAlert: $mainViewModel.showAlert) 
                
                RestartButtonView {
                    print("Restart")
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
