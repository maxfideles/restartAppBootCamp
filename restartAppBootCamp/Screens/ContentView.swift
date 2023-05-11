//
//  ContentView.swift
//  restartAppBootCamp
//
//  Created by Max Victor on 11/05/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: Property
    @AppStorage("Onboarding") var isOnBoardingViewActive: Bool = true

    
    var body: some View {
        ZStack{
            if isOnBoardingViewActive{
                OnBoardingView()

            }else{
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
