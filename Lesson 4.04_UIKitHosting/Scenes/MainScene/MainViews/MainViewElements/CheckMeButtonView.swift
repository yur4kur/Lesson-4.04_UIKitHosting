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
    
    // MARK: - Public propeties
    
    var score: Int
    
    // MARK: - Body
    
    var body: some View {
        Button(Constants.checkMeTitle) {
            showAlert = true
        }
        .alert(Constants.nilString, isPresented: $showAlert) {
            Button(Constants.okTitle, role: .cancel) {}
        } message: {
            AlertTextView(score: score)
        }
    }
}

// MARK: - Preview

#Preview {
    CheckMeButtonView(showAlert: .constant(true), score: 75)
}
