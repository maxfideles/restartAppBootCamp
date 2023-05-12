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
    
    @State private var buttonWidth:Double = UIScreen.main.bounds.width - 80
    @State private var buttonOffset:CGFloat = 0
    
    var body: some View {
      
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all,edges: .all)
            VStack(spacing: 20){
              //MARK: - Header
                Spacer()
                
                VStack(spacing: 0){
                    Text("Share")
                        .font(.system(size: 60))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("""
                    It's not how much we give but
                    how much lovewe putinto giving.
                    """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,10)
                }//: Header
                
            //MARK: - Center
                ZStack{
                    
                    CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                    
                }//: Center
                
                Spacer()
                
             //MARK: - Footer
                
                ZStack{
                    //Parts of the custom Buttom
                    
                    //1. Background (Static)
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    
                    //2. Call-to-Action (Static)
                    Text("Get Started")
                        .font(.system(.title3,design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x:20)
                    //3. Capsule (Dynamic width)
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width:buttonOffset + 80)
                        Spacer()
                    }
                    //4. Circle (Draggable)
                    HStack {
                        ZStack{
                            Capsule()
                                .fill(Color("ColorRed"))
                            Capsule()
                                .fill(Color.black.opacity(0.2))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }//: ZStack
                        .foregroundColor(.white)
                    .frame(width:80,height: 80,alignment: .center)
                    .offset(x:buttonOffset)
                    .gesture (
                        DragGesture()
                            .onChanged{ gesture in
                                if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80 {
                                    buttonOffset = gesture.translation.width
                                }
                                 
                            }
                            .onEnded({ _ in
                                if buttonOffset > buttonWidth/2{
                                    buttonOffset = buttonWidth - 80
                                    isOnBoardingViewActive = false
                                    
                                }else{
                                    buttonOffset = 0
                                }
                                
                            })
                    )//: GESTURE
                        
                        Spacer()
                    }//:HStack
                    
                }//:Fotter
                .frame(width: buttonWidth,height:80,alignment: .center)
                .padding()
            }//: VSTACK
        }//:ZSTACK
        
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
