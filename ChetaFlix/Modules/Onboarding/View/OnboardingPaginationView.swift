//
//  OnboardingPaginationView.swift
//  ChetaFlix
//
//  Created by Shaikat on 14.6.2025.
//

import SwiftUI

struct OnboardingPaginationView: View {
    let totalPages: Int
    let currentPage: Int
    let onDotTap: (Int) -> Void


    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<totalPages,
                    id: \.self) { index in
                Capsule()
                    .fill(index == currentPage ? AppColors.blueAccent : AppColors.blueAccent.opacity(0.5))
                    .frame(width: index == currentPage ? 36 : 12, height: 12)
                    .animation(.easeInOut(duration: 0.25), value: currentPage)
                    .onTapGesture {
                        onDotTap(index)
                    }
            }
        }
    }
}

struct OnboardingPaginationView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPaginationView(totalPages: 3,
                                 currentPage: 1,
                                 onDotTap: {_ in
        })
    }
}
