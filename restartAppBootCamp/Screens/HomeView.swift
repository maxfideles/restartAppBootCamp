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
        //MARK: - Header
            Spacer()
            ZStack{
                
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.2)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    
            }//:HEADER
            
       
        //MARK: - Center
            
            Text("The time that leads to masteryis dependent of intensityof ourfocus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .padding()
                .multilineTextAlignment(.center)
            Spacer()
            
        //MARK: - FOOTER
            ZStack {
                
                Button {
                    isOnBoardingViewActive = true
                } label: {
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .imageScale(.large)
                    Text("Restart")
                        .font(.system(.title3,design: .rounded))
                        .fontWeight(.bold)
                }//: BUTTON
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                
                
            }//:Footer


            
        }//: VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
