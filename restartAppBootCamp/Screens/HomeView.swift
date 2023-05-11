//
//  HomeView.swift
//  restartAppBootCamp
//
//  Created by Max Victor on 11/05/23.
//

import SwiftUI

struct HomeView: View {
    // MARK: Property
    @AppStorage("Onboarding") var isOnBoardingViewActive: Bool = false
    
    var body: some View {
        VStack {
            
            Text("Home!")
                .font(.largeTitle)
            
            Button {
                isOnBoardingViewActive.toggle()
            } label: {
                Text("Restart")
            }

            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
