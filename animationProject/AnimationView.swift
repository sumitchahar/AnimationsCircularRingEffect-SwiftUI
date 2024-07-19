//
//  ContentView.swift
//  animationProject
//  Created by Sumit on 17/07/24.
import SwiftUI

struct AnimationView: View {
    
    @State private var animationCirculeCountOne = 0.5
    @State private var isShowingCircule = false
    @State private var animationCirculeCountTwo = 0.8
    @State private var animationCirculeCountThree = 1.2
    @State private var isButtonAction = true

  var body: some View {
     ZStack {
         Button {
             if isButtonAction {
                 isButtonAction.toggle()
                 isShowingCircule = true
                 animationCirculeCountOne += 1
                 animationCirculeCountTwo += 1
                 animationCirculeCountThree += 1
               }
          } label: {
                 Image("callingIcon")
                      .resizable()
                      .frame(width:100,height:100)
                      .cornerRadius(50)
        }
            .padding(10)
            .clipShape(.circle)
            .overlay(
                Circle()
                    .stroke(isShowingCircule == true ? .red : .clear)
                    .scaleEffect(animationCirculeCountOne)
                    .opacity(2 - animationCirculeCountOne)
                    .animation(
                        .easeInOut(duration: 1)
                        .repeatForever(autoreverses: false),
                        value: animationCirculeCountOne
               )
            )
            .overlay(
                Circle()
                    .stroke(isShowingCircule == true ? .red : .clear)
                    .scaleEffect(animationCirculeCountTwo)
                    .opacity(3 - animationCirculeCountTwo)
                    .animation(
                        .easeInOut(duration: 1)
                        .repeatForever(autoreverses: false),
                        value: animationCirculeCountTwo
               )
            )
            .overlay(
                Circle()
                    .stroke(isShowingCircule == true ? .red : .clear)
                    .scaleEffect(animationCirculeCountThree)
                    .opacity(4 - animationCirculeCountThree)
                    .animation(
                        .easeInOut(duration: 1)
                        .repeatForever(autoreverses: false),
                        value: animationCirculeCountThree
            )
         )
       }
    }
 }

#Preview {
    AnimationView()
}
