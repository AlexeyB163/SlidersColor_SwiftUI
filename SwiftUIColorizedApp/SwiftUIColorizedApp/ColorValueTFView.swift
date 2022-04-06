//
//  ColorValueTFView.swift
//  SwiftUIColorizedApp
//
//  Created by Alexey Efimov on 21.10.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct ColorValueTFView: View {
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue) { _ in
            withAnimation {
                checkValue()
            }
        }
        .frame(width: 55, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
        .alert("Wrong Format", isPresented: $showAlert, actions: {}) {
            Text("Please enter value from 0 to 255")
        }
    }
}

extension ColorValueTFView {
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        textValue = "0"
    }
}

struct SliderValueTF_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            ColorValueTFView(textValue: .constant("128"), value: .constant(128.0))
        }
    }
}
