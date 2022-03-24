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
				
				ZStack {
					ZStack {
						Circle()
							.stroke(.white.opacity(0.2), lineWidth: 40)
							.frame(width: 260, height: 260, alignment: .center)
						
						Circle()
							.stroke(.white.opacity(0.2), lineWidth: 80)
							.frame(width: 260, height: 260, alignment: .center)
					}
					Image("character-man")
						.resizable()
						.scaledToFit()
				}
				
				Spacer()
				
				// Footer
				ZStack {
					// 1. Static Background
					Capsule()
						.fill(Color.white.opacity(0.2))
					
					Capsule()
						.fill(Color.white.opacity(0.2))
						.padding(8)
					
					// 2. Call to action (static)
					
					
					// 3. Capsule (dynamic width)
					HStack {
						Capsule()
							.fill(Color.red.opacity(0.9))
							.frame(width: 80)
						
						Spacer()
					}
					
					// 4. Circle (draggable)
					
				}
				.frame(height: 80, alignment: .center)
				.padding()
			
			}
		}
	}
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
