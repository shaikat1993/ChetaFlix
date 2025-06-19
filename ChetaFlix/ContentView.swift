//
//  ContentView.swift
//  ChetaFlix
//
//  Created by Shaikat on 11.6.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Inject the view model as needed
        OnboardingView(viewModel: OnboardingViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
