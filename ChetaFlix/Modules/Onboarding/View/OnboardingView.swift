//
//  OnboardingView.swift
//  ChetaFlix
//
//  Created by Shaikat on 14.6.2025.
//

import SwiftUI

struct OnboardingView: View {
    @ObservedObject var viewModel: OnboardingViewModel

    private let imageAreaHeight: CGFloat = 330

    var body: some View {
        ZStack {
            AppColors.primaryDark.ignoresSafeArea()

            VStack(spacing: 0) {
                Image(viewModel.pages[viewModel.currentPage].imageName)
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(height: imageAreaHeight)
                    .padding(.top)

                Spacer()

                // Card always anchored at the bottom
                OnboardingPageView(
                    page: viewModel.pages[viewModel.currentPage],
                    totalPages: viewModel.pages.count,
                    currentPage: viewModel.currentPage,
                    onNext: { viewModel.nextPage() },
                    onPageChange: { index in viewModel.currentPage = index }
                )
            }
            .ignoresSafeArea(edges: .bottom)
            .padding(.top)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(viewModel: OnboardingViewModel())
    }
}
