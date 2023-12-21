//
//  RestartButtonView.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

// MARK: - RestartButtonView

struct RestartButtonView: View {
    
    // MARK: - Public properties
    
    let action: () -> Void
    
    // MARK: - Body
    
    var body: some View {
        Button(Constants.restartTitle, action: action)
    }
}

// MARK: - Preview

#Preview {
    RestartButtonView(action: {})
}
