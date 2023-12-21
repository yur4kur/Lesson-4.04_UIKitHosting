//
//  CheckMeButtonView.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

// MARK: - CheckMeButtonView

struct CheckMeButtonView: View {
    
    // MARK: - Wrapped Properties
    
    @Binding var showAlert: Bool
    @Binding var score: Int
    
    // MARK: - Public propeties
    
    let action: () -> Void
    
    // MARK: - Body
    
    var body: some View {
        Button(Constants.checkMeTitle) {
            showAlert = true
            action()
        }
        .alert(Constants.nilString, isPresented: $showAlert) {
            Button(Constants.oKTitle, role: .cancel) {}
        } message: {
            AlertTextView(score: $score)
        }
    }
}

// MARK: - Preview

#Preview {
    CheckMeButtonView(
        showAlert: .constant(true),
        score: .constant(75),
        action: {})
}
