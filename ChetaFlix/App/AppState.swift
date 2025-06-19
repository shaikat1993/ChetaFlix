//
//  AppState.swift
//  ChetaFlix
//
//  Created by Shaikat on 19.6.2025.
//

import SwiftUI
import Combine

class AppState: ObservableObject {
    enum Screen{
        case splash,
             onboarding,
             auth,
             home
    }
    
    @Published var currentScreen: Screen = .splash
    private var cancellables = Set<AnyCancellable>()
    
    func handleSplashScreenCompletion(isFirstLaunch: Bool,
                                      isAuthenticated: Bool) {
        if isFirstLaunch {
            currentScreen = .onboarding
        } else if isAuthenticated {
            currentScreen = .home
        } else {
            currentScreen = .auth
        }
    }
    
    func observeOnboardingCompletion(onboadingVM: OnboardingViewModel) {
        onboadingVM.$currentPage.sink { [weak self,
                                         weak onboadingVM] page in
            if onboadingVM?.isLastPage == true {
                // onboarding has been shown
                UserDefaults.standard.set(true, forKey: "hasSeenOnboarding")
                self?.currentScreen = .auth
            }
        }
        .store(in: &cancellables)
    }
}
