//
//  ColorSliderView.swift
//  SwiftUIColorizedApp
//
//  Created by Alexey Efimov on 26.05.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct ColorSliderView: View {
    
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            ColorValueTextView(value: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(color)
                .onChange(of: sliderValue) { isOnFocus in
                    textValue = "\(lround(isOnFocus))"
                }
            
            ColorValueTFView(textValue: $textValue, value: $sliderValue)
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            ColorSliderView(sliderValue: .constant(100), color: .red)
        }
    }
}
