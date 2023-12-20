//
//  MainView.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

// MARK: - MainView

struct MainView: View {
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            UISliderView()
                .padding(.horizontal)
        }
        .padding()
    }
}

// MARK: - Preview

#Preview {
    MainView()
}
