//
//  SliderView.swift
//  Slider
//
//  Created by Дмитрий Лубов on 02.05.2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    
    let opacityThumb: CGFloat
    
    var body: some View {
        HStack {
            Text("0")
            UISliderRepresentation(
                value: $value,
                opacity: opacityThumb
            )
            Text("100")
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(50), opacityThumb: 0.5)
    }
}
