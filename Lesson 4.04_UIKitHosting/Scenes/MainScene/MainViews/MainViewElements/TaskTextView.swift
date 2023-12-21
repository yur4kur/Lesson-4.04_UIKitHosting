//
//  TaskTextView.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

// MARK:  - TaskTextView

struct TaskTextView: View {
    
    // MARK: - Wrapped properties
    
    @Binding var target: Int
    
    // MARK: - Body
    
    var body: some View {
        Text(Constants.taskText + String(target))
    }
}

// MARK: - Preview

#Preview {
    TaskTextView(target: .constant(97))
}
