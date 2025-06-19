//
//  OnboardingPageView.swift
//  ChetaFlix
//
//  Created by Shaikat on 14.6.2025.
//

import SwiftUI

struct OnboardingPageView: View {
    let page: OnboardingPage
    let totalPages: Int
    let currentPage: Int
    let onNext: () -> Void
    let onPageChange:(Int) -> Void
    
    var body: some View {
        VStack {
            Spacer()
            OnboardingCardView(
                title: page.title,
                subtitle: page.subTitle,
                totalPages: totalPages,
                currentPage: currentPage,
                onNext: onNext,
                onPageChange: onPageChange,
                
            )
            .padding(.horizontal, 24)
            .padding(.bottom, 32)
        }
    }
}

struct OnboardingPageView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPageView(
            page: OnboardingPage(
                title: "Preview Title",
                subTitle: "Preview subtitle goes here.",
                imageName: "onboarding1",
                color: AppColors.blueAccent
            ),
            totalPages: 3,
            currentPage: 0,
            onNext: {},
            onPageChange: {_ in }
        )
        .background(AppColors.primaryDark)
    }
}
