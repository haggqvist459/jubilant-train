//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Tim Häggqvist Luotomäki on 26/12/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ZStack{
                BackgroundView()
                ScrollView {
                    LazyVGrid(columns: columns){
                        ForEach(MockData.frameworks){ framework in
                            FrameworkTitleView(framework: framework)
                                .onTapGesture {
                                    viewModel.selectedFramework = framework
                                }
                            }
                        }
                    }
                .navigationTitle("Frameworks")
        //       modal pop up
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(framework: viewModel.selectedFramework!,
                                        isShowingDetailView: $viewModel.isShowingDetailView)
                }
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}


