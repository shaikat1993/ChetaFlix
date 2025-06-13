//
//  Localize.swift
//  ChetaFlix
//
//  Created by Shaikat on 14.6.2025.
//

import Foundation

// Helper for easy localized string access
func Localize(_ key: String) -> String {
    NSLocalizedString(key, comment: "")
}


enum Localized {
    enum Onboarding {
        static let title1 = "onboarding_title_1"
        static let subtitle1 = "onboarding_subtitle_1"
        static let title2 = "onboarding_title_2"
        static let subtitle2 = "onboarding_subtitle_2"
        static let title3 = "onboarding_title_3"
        static let subtitle3 = "onboarding_subtitle_3"
    }
    
    // add more enums for other featrues
}
