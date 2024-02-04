//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Tim Häggqvist Luotomäki on 26/12/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        
        ZStack{
            BackgroundView()
            VStack {
                HStack {
                    Spacer()
                    Button {
                        isShowingDetailView = false
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }
                }
                .padding()
                
                Spacer()
                
                FrameworkTitleView(framework: framework)
                
                Text(framework.description)
                    .padding()
                    .font(.body)
                Spacer()
                Button {
                    
                } label: {
                    AFButton(title: "Learn More")
                }
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
