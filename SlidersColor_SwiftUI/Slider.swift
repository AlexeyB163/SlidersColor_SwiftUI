//
//  Sliders.swift
//  SlidersColor_SwiftUI
//
//  Created by User on 03.04.2022.
//

import SwiftUI

struct Sliders: View {
    @Binding var sliderValue: Double
    @State var textValue: String
    
    let colorSlider:Color
    
    var body: some View {
        HStack{
            LabelValue(value: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .onChange(of: sliderValue) { newValue in
                    textValue = "\(lround(newValue))"
                }
                .tint(colorSlider)
                
            TextFields(textValue: $textValue, value: $sliderValue)
                .onAppear {
                    textValue = ("\(lround(sliderValue))")
                }
            }
        }
    }

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        Sliders(sliderValue: .constant(0), textValue: "", colorSlider: .red)
    }
}
