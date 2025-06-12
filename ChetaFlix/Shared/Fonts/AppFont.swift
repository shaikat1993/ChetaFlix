//
//  AppFont.swift
//  ChetaFlix
//
//  Created by Shaikat on 12.6.2025.
//

import Foundation
import SwiftUI

struct AppFont: ViewModifier {
    var size: CGFloat
    var weight: String = "Regular"

    func body(content: Content) -> some View {
        content.font(.custom("Montserrat-\(weight)", size: size))
    }
}

enum AppFontStyle{
    case largeTitle,
         title,
         subtitle,
         body,
         caption,
         small
    
    var size: CGFloat {
        switch self {
        case .largeTitle:
            return 34
        case .title:
            return 28
        case .subtitle:
            return 20
        case .body:
            return 16
        case .caption:
            return 13
        case .small:
            return 11
        }
    }
    
    var weight: String {
        switch self {
        case .largeTitle,  .title:
            return "Bold"
        case .subtitle:
            return "SemiBold"
        case .body:
            return "Regular"
        case .caption, .small:
            return "Light"
        }
    }
}


// extending modifier for usability
extension View {
    func appFont(_ style: AppFontStyle) -> some View {
        self.modifier(AppFont(size: style.size,
                              weight: style.weight))
    }
}
