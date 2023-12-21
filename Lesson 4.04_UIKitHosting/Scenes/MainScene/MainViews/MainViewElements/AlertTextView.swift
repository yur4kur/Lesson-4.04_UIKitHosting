//
//  AlertTextView.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

struct AlertTextView: View {
    
    @Binding var score: Int
    
    var body: some View {
        Text(Constants.alertMessage + String(score))
    }
}

#Preview {
    AlertTextView(score: .constant(52))
}
