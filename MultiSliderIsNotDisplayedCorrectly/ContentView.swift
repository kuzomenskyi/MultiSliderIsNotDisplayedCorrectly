//
//  ContentView.swift
//  MultiSliderIsNotDisplayedCorrectly
//
//  Created by vladimir.kuzomenskyi on 11.04.2024.
//

import SwiftUI
import MultiSlider

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            let size = geometry.size
            
            MultiValueSlider(value: $viewModel.distanceSelected, minimumValue: viewModel.distanceMin, maximumValue: viewModel.distanceMax)
                .orientation(.horizontal)
                .valueLabelColor(.gray)
                .outerTrackColor(.gray)
                .thumbTintColor(.blue)
                .valueLabelFont(.systemFont(ofSize: 15))
                .isHapticSnap(false)
                .trackWidth(3)
                .frame(width: size.width * 0.8, height: 100)
                .padding(.horizontal, 42)
        }
    }
    
    @StateObject private var viewModel: ContentVM = .mock
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
