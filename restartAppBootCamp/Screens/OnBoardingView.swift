//
//  onBoardingView.swift
//  restartAppBootCamp
//
//  Created by Max Victor on 11/05/23.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: Property
    @AppStorage("Onboarding") var isOnBoardingViewActive: Bool = true

    
    var body: some View {
      
        VStack{
            Text("OnBoarding")
                .font(.largeTitle)
            
            Button {
                isOnBoardingViewActive.toggle()
            } label: {
                Text("Start")
            }

            
        }
        
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
