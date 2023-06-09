//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Ilnur on 09.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("СВЕТОФОР")
                    .padding()
                    .background(.blue)
                    .font(.title)
                    .foregroundColor(Color.white)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 10))
            
                LampSwiftUIView(color: .red)
                LampSwiftUIView(color: .yellow)
                LampSwiftUIView(color: .green)
                
                Button { } label: {
                    Text("START")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 10))
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
