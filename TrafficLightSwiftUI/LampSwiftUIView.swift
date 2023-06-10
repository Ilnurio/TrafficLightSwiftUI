//
//  LampSwiftUIView.swift
//  TrafficLightSwiftUI
//
//  Created by Ilnur on 09.06.2023.
//

import SwiftUI

struct LampSwiftUIView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .opacity(opacity)
            .overlay(Circle()
                .stroke(Color.white, lineWidth: 4))
    }
}

struct LampSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LampSwiftUIView(color: .red, opacity: 1)
    }
}
