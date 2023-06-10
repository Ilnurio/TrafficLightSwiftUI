//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Ilnur on 09.06.2023.
//

import SwiftUI

enum CurrentLight {
    case alphaRed,red, yellow, green
}

struct ContentView: View {
    @State private var currentLight: CurrentLight = .alphaRed
    @State private var buttonTitle = "START"
    
    private func buttonTapped() {
        switch currentLight {
        case .alphaRed: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20) {
                Text("СВЕТОФОР")
                    .padding(5)
                    .font(Font.title.weight(.bold))
                    .padding()
                    .foregroundColor(Color.white)
                    .background(.black)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(Color.white, lineWidth: 4))
            
                VStack() {
                    LampSwiftUIView(color: .red, opacity: currentLight == .red ? 1 : 0.3)
                    LampSwiftUIView(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                    LampSwiftUIView(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                }
                
                ChangeColorButton(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    buttonTapped()
                }
                .padding()
            }
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
