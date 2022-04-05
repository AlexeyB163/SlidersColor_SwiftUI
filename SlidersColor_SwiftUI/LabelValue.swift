//
//  LabelValue.swift
//  SlidersColor_SwiftUI
//
//  Created by User on 04.04.2022.
//

import SwiftUI

struct LabelValue: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 33, height: 20)
    }
}

struct LabelValue_Previews: PreviewProvider {
    static var previews: some View {
        LabelValue(value: 777)
    }
}
