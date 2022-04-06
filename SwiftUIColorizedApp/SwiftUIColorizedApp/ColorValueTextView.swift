//
//  ColorValueTextView.swift
//  SwiftUIColorizedApp
//
//  Created by Alexey Efimov on 21.10.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct ColorValueTextView: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 35, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct SliderValueLabel_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            ColorValueTextView(value: 128)
        }
    }
}
