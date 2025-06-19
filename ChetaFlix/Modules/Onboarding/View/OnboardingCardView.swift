//
//  OnboardingCardView.swift
//  ChetaFlix
//
//  Created by Shaikat on 14.6.2025.
//

import SwiftUI

struct OnboardingCardView: View {
    let title: String
    let subtitle: String
    let totalPages: Int
    let currentPage: Int
    let onNext: () -> Void
    let onPageChange:(Int) -> Void
    
    
    var body: some View {
        VStack(spacing: 20){
            Text(title)
                .appFont(.subtitle)
                .foregroundColor(AppColors.textWhite)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true) // Ensures full text is shown

            
            Text(subtitle)
                .appFont(.body)
                .foregroundColor(AppColors.textGrey)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true) // Ensures full text is shown

            
            Spacer()
            
            HStack(alignment: .center){
                OnboardingPaginationView(totalPages: totalPages,
                                         currentPage: currentPage,
                                         onDotTap: onPageChange)
                Spacer()
                Button(action: onNext) {
                    OnboardingNextButton(progress: CGFloat(currentPage+1) / CGFloat(totalPages))
                }
                
            }.padding(.bottom, 4)
        }
        .padding(24)
        .background(AppColors.primarySoft)
        .cornerRadius(36)
        .shadow(radius: 10)
        .frame(maxWidth: .infinity,
               minHeight: 280,
               maxHeight: 320)
        
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(
            title: "Preview Title Preview Title Preview Title Preview Title Preview Title Preview Title",
            subtitle: "Preview subtitle goes here. Preview subtitle goes here. Preview subtitle goes here. Preview subtitle goes here. Preview subtitle goes here. Preview subtitle goes here. Preview subtitle goes here. Preview subtitle goes here. Preview subtitle goes here. ",
            totalPages: 3,
            currentPage: 0,
            onNext: {},
            onPageChange: { _ in }
        )
        .previewLayout(.sizeThatFits)
        .padding()
        .background(AppColors.primaryDark)
    }
}
