//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Tim Häggqvist Luotomäki on 26/12/2023.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
    
}
