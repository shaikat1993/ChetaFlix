//
//  SplashScreenViewModel.swift
//  ChetaFlix
//
//  Created by Shaikat on 19.6.2025.
//

import SwiftUI

class SplashScreenViewModel: ObservableObject {
    @Published var isAnimationCompleted: Bool = false

    func startAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.isAnimationCompleted = true
        }
    }
}
