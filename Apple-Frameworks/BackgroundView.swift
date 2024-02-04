//
//  BackgroundView.swift
//  Apple-Frameworks
//
//  Created by Tim Häggqvist Luotomäki on 26/12/2023.
//

import SwiftUI

struct BackgroundView: View {
    
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                       startPoint: .bottomTrailing,
                       endPoint: .topLeading)
        .ignoresSafeArea()
//        ContainerRelativeShape()
//            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
//            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}

