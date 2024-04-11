//
//  ContentVM.swift
//  MultiSliderIsNotDisplayedCorrectly
//
//  Created by vladimir.kuzomenskyi on 11.04.2024.
//

import SwiftUI
import Combine

final class ContentVM: ObservableObject {
    // MARK: Constant
    static let mock: ContentVM = .init()
    
    let distanceMin: CGFloat = 0
    let distanceMax: CGFloat = 25
    
    // MARK: Private Constant
    
    // MARK: Variable
    var cancellables: Set<AnyCancellable> = .init()
    
    @Published var distanceSelected: [CGFloat] = []
    
    // MARK: Private Variable
    private(set) var onAppearBlock: ((_ viewModel: ContentVM) -> Void)?
    
    // MARK: Init
    init() {
        
    }
    
    init(onAppearBlock: ((_ viewModel: ContentVM) -> Void)? = nil) {
        self.onAppearBlock = onAppearBlock
    }
    
    // MARK: Action
    
    // MARK: Private Action
    
    // MARK: Function
    func configure() {
        onAppearBlock?(self)
        onAppearBlock = nil
    }
    
    // MARK: Private Function
}

