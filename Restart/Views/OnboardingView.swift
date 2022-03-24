//
//  OnboardingView.swift
//  Restart
//
//  Created by Berk Dogan on 24/3/2022.
//

import SwiftUI

struct OnboardingView: View {
    
	// Property
	@AppStorage("onboarding") var isOnboardingViewActive: Bool = true
	
	// Body
	
	var body: some View {
		ZStack {
			
			Color.blue.ignoresSafeArea()
			
			
			VStack(spacing: 20) {
				// Header
				Spacer()
				
				VStack(spacing: 0) {
					Text("Share.")
						.font(.system(size: 60))
						. fontWeight(.heavy)
						.foregroundColor(.white)
					
					Text("It's not how much we give but how much love we put into giving.")
						.font(.title3)
						.fontWeight(.light)
						.foregroundColor(.white)
						.multilineTextAlignment(.center)
						.padding(.horizontal, 10)
				}
				// Center
				
				// Footer
			
			
			}
		}
	}
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
