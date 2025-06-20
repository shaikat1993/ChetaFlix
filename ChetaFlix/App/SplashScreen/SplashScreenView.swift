//
//  SplashScreenView.swift
//  ChetaFlix
//
//  Created by Shaikat on 19.6.2025.
//

import SwiftUI

struct SplashScreenView: View {
    @ObservedObject var viewModel: SplashScreenViewModel
    var onAnimationCompleted: () -> Void

    @State private var scale: CGFloat = 1.0
    @State private var opacity: CGFloat = 0.7

    var body: some View {
        ZStack {
            AppColors.primaryDark.ignoresSafeArea()
            Image(uiImage: #imageLiteral(resourceName: "logo.png"))
                .resizable()
                .scaledToFit()
                .frame(width: 138, height: 138, alignment: .center)
                .scaleEffect(scale)
                .opacity(opacity)
                .onAppear {
                    // Pop in with bounce
                    withAnimation(.interpolatingSpring(stiffness: 120,
                                                       damping: 9)) {
                        scale = 1.25
                    }
                    // Settle to normal size
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
                        withAnimation(.easeOut(duration: 0.25)){
                            scale = 1.0
                        }
                    }
                    // Fade and pop out, then trigger navigation
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.1) {
                        withAnimation(.easeIn(duration: 1.0)) {
                            opacity = 0
                            scale = 1.5
                        }
                    }
                    // Trigger navigation after fade
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) {
                        viewModel.startAnimation()
                    }
                }
        }
        .onChange(of: viewModel.isAnimationCompleted) { _, newValue in
            if newValue {
                onAnimationCompleted()
            }
        }
    }
}

#Preview {
    SplashScreenView(
        viewModel: SplashScreenViewModel(),
        onAnimationCompleted: {}
    )
}
