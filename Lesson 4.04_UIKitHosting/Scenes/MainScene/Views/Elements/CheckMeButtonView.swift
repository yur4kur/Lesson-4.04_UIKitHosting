//
//  CheckMeButtonView.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

// MARK: - CheckMeButtonView

struct CheckMeButtonView: View {
    
    // MARK: - Public properties
    
    let action: () -> Void
    
    // MARK: - Body
    
    var body: some View {
        Button(Constants.checkMeTitle, action: action)
    }
}

// MARK: - Preview

#Preview {
    CheckMeButtonView(action: {})
}
