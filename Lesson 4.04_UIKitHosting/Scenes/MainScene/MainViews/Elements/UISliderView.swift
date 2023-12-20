//
//  UISliderView.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

// MARK: - UISliderView

struct UISliderView: UIViewRepresentable {
    
    // MARK: - View settings methods
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 50
        slider.thumbTintColor = .red
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        ///
    }
    
}

// MARK: - Preview

#Preview {
    UISliderView()
}
