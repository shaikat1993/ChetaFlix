//
//  OnboardingViewModel.swift
//  ChetaFlix
//
//  Created by Shaikat on 14.6.2025.
//

import SwiftUI

class OnboardingViewModel: ObservableObject {
    @Published var pages: [OnboardingPage] = [
        OnboardingPage(title: Localize(Localized.Onboarding.title1),
                       subTitle: Localize(Localized.Onboarding.subtitle1),
                       imageName: "onboarding1",
                       color: AppColors.blueAccent),
        OnboardingPage(title: Localize(Localized.Onboarding.title2),
                       subTitle: Localize(Localized.Onboarding.subtitle2),
                       imageName: "onboarding2",
                       color: AppColors.blueAccent),
        OnboardingPage(title: Localize(Localized.Onboarding.title3),
                       subTitle: Localize(Localized.Onboarding.subtitle3),
                       imageName: "onboarding3",
                       color: AppColors.blueAccent),
    ]
    
    @Published var currentPage: Int = 0
    
    var isLastPage: Bool{
        currentPage == pages.count - 1
    }
    
    func nextPage() {
        if isLastPage {
            // Mark onboarding as complete (e.g., via UserDefaults)
        } else {
            currentPage += 1
        }
    }
}
