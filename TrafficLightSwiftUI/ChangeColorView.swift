//
//  SwiftUIView.swift
//  TrafficLightSwiftUI
//
//  Created by Ilnur on 10.06.2023.
//

import SwiftUI

struct ChangeColorView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .frame(width: 150, height: 60)
        .background(
            LinearGradient(
                gradient: Gradient(
                    colors: [Color.red,Color.yellow, Color.green]),
                startPoint: .leading, endPoint: .trailing))
        .foregroundColor(.white)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
            .stroke(Color.white, lineWidth: 4))
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorView(title: "START", action: {})
    }
}
