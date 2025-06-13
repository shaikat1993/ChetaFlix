//
//  Environment.swift
//  ChetaFlix
//
//  Created by Shaikat on 14.6.2025.
//

import Foundation

enum AppEnvironment {
    static var apiBaseURL: String {
    #if QA
        return "api for QA"
    #else
        return "api for production"
    #endif
    }
}
