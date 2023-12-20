//
//  CheckMeButtonView.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

// MARK: - CheckMeButtonView

struct CheckMeButtonView: View {
    
    // MARK: - Wrapped properties
    
    @Binding var showAlert: Bool
    
     
    // MARK: - Body
    
    var body: some View {
        Button(Constants.checkMeTitle) {
            showAlert = true
        }
            .alert(Constants.alertMessage, isPresented: $showAlert) {
                Button(Constants.oKTitle, role: .cancel) {}
            }
    }
}

// MARK: - Preview

#Preview {
    CheckMeButtonView(showAlert: .constant(true))
}
