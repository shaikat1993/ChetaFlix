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

    var body: some View {
        ZStack {
            AppColors.primaryDark.ignoresSafeArea()
            Image(uiImage: #imageLiteral(resourceName: "logo.png"))
                .resizable()
                .scaledToFit()
                .frame(width: 138, height: 138, alignment: .center)
                .scaleEffect(scale)
                .onAppear {
                    withAnimation(.easeInOut(duration: 1.5)) {
                        scale = 1.4
                    }
                    viewModel.startAnimation()
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
