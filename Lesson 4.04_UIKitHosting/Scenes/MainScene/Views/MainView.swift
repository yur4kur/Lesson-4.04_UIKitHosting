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
    
    @State private var target = 97
    @State private var showAlert = false
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            VStack {
                TaskTextView(target: $target)

                HStack {
                    Text("0")
                    UISliderView()
                    Text("100")
                }
                .padding()
                
                CheckMeButtonView(showAlert: $showAlert) 
                
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
