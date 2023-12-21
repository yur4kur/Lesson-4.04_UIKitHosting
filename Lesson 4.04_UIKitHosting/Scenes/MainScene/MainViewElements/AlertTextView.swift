//
//  AlertTextView.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

// MARK: AlertTextView

struct AlertTextView: View {
    
    // MARK: - Wrapped Properties
    
    var score: Int
    
    // MARK:  - Body
    var body: some View {
        Text(Constants.alertMessage + String(score))
    }
}

// MARK: - Preview

#Preview {
    AlertTextView(score: 52)
}
