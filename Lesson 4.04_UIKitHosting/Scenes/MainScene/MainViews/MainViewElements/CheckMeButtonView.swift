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
    @Binding var score: Int
     
    // MARK: - Body
    
    var body: some View {
        Button(Constants.checkMeTitle) {
            showAlert = true
        }
        .alert("", isPresented: $showAlert) {
            Button(Constants.oKTitle, role: .cancel) {}
        } message: {
            AlertTextView(score: $score)
        }

//            .alert(Constants.alertMessage, isPresented: $showAlert) {
//                Button(Constants.oKTitle, role: .cancel) {}
//            }
    }
}

// MARK: - Preview

#Preview {
    CheckMeButtonView(showAlert: .constant(true), score: .constant(75))
}
