//
//  UISliderView.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

// MARK: - UISliderView

struct UISliderView: UIViewRepresentable {
    
    // MARK: - Wrapped properties
    
    @Binding var currentValue: Float
    
    // MARK: - Public properties
    
    var opacity: Float
    
    // MARK: - Public methods
    
    // MARK: Setup View
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        
        slider.minimumValue = 0
        slider.maximumValue = 100
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.didEndMove),
            for: .valueChanged
        )
        
        return slider
    }
    
    // MARK: Update View
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = currentValue
        uiView.thumbTintColor = .red.withAlphaComponent(CGFloat(opacity))
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(currentValue: $currentValue)
    }
}

// MARK: - Extensions

extension UISliderView {
    
    // MARK: Coordinator
    
    class Coordinator: NSObject {
        
        // MARK: Wrapped properties
        @Binding var currentValue: Float
        
        // MARK: Initializers
        init(currentValue: Binding<Float>) {
            self._currentValue = currentValue
        }
        
        // MARK: Public methods
        @objc func didEndMove(_ sender: UISlider) {
            currentValue = sender.value
        }
    }
}

// MARK: - Preview

#Preview {
    UISliderView(currentValue: .constant(36), opacity: 0.36)
}
