//
//  MainViewModel.swift
//  Lesson 4.04_UIKitHosting
//
//  Created by Юрий Куринной on 20.12.2023.
//

import SwiftUI

// MARK: - MainViewModel

final class MainViewModel: ObservableObject {
    @Published var target = 97
    @Published var showAlert = false
}

