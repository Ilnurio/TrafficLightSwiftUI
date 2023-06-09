//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Ilnur on 09.06.2023.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var currentLight: CurrentLight = .red
    @State private var buttonTitle = "START"
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 30) {
                Text("СВЕТОФОР")
                    .padding(5)
                    .background(.blue)
                    .font(Font.title.weight(.bold))
                    .padding()
                    .foregroundColor(Color.white)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 10)
                    )
                VStack() {
                    LampSwiftUIView(color: .red, opacity: currentLight == .red ? 1 : 0.3)
                    LampSwiftUIView(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                    LampSwiftUIView(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                }
                
                Button {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    buttonTapped()
                }
            label: {
                Text(buttonTitle)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red,Color.yellow, Color.green]), startPoint: .leading, endPoint: .trailing))
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 10)
                    )
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

 // MARK: - methods for buttonTapped
extension ContentView {
    private func buttonTapped() {
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}
