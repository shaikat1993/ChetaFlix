//
//  RootAppView.swift
//  ChetaFlix
//
//  Created by Shaikat on 19.6.2025.
//
import SwiftUI

struct RootAppView: View {
    @StateObject var appState = AppState()
    @StateObject var onboardingVM = OnboardingViewModel()
    @StateObject var splashScreenVM = SplashScreenViewModel()
    
    
    var body: some View {
        Group {
            switch appState.currentScreen {
            case .splash:
                SplashScreenView(viewModel: splashScreenVM) {
                    // for testing
                    UserDefaults.standard.removeObject(forKey: "hasSeenOnboarding")

                    let firstLaunch = !UserDefaults.standard.bool(forKey: "hasSeenOnboarding")
                    let isAuthenticated = false //TODO: replace with supabse check
                    
                    appState.handleSplashScreenCompletion(isFirstLaunch: firstLaunch,
                                                          isAuthenticated: isAuthenticated)
                    if firstLaunch {
                        appState.observeOnboardingCompletion(onboadingVM: onboardingVM)
                    }
                }
            case .onboarding:
                OnboardingView(viewModel: onboardingVM)
            case .auth:
                //Need to change
                OnboardingView(viewModel: onboardingVM)
            case .home:
                //Need to change
                OnboardingView(viewModel: onboardingVM)
            }
        }.environmentObject(appState)
    }
}
