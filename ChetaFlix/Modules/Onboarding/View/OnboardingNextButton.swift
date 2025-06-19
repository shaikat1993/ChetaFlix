//
//  OnboardingNextButton.swift
//  ChetaFlix
//
//  Created by Shaikat on 14.6.2025.
//

import SwiftUI

struct OnboardingNextButton: View {
    let progress: CGFloat
    
    var body: some View {
        ZStack{
            // Outer progress border
            RoundedRectangle(cornerRadius: 16,
                             style: .continuous)
            .trim(from: 0, to: progress)
            .stroke(AppColors.blueAccent,
                    style: StrokeStyle(lineWidth: 4,
                                       lineCap: .round))
            .frame(width: 56, height: 56)
            .rotationEffect(.degrees(-90))
            .animation(.easeInOut(duration: 0.4),
                       value: progress)
            
            // Inner fill
            RoundedRectangle(cornerRadius: 14, style: .continuous)
                .fill(AppColors.blueAccent)
                .frame(width: 48, height: 48)
            // Arrow icon
            Image(systemName: "chevron.right")
                .foregroundColor(AppColors.textWhite)
                .font(.system(size: 24, weight: .bold))
        }
        .shadow(radius: 1)
    }
}

#Preview {
    OnboardingNextButton(progress: 0.5)
}
