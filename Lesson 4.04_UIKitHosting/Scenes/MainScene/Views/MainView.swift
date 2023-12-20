//
//  MainView.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

// MARK: - MainView

struct MainView: View {
    
    @State private var target = 97
    
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
                
                CheckMeButtonView {
                    print("Check me")
                }
                
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
