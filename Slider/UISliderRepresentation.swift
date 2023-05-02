//
//  UISliderRepresentation.swift
//  Slider
//
//  Created by Дмитрий Лубов on 02.05.2023.
//

import SwiftUI

struct UISliderRepresentation: UIViewRepresentable {
    
    @Binding var value: Double
    let opacity: CGFloat
    
    private var color: UIColor {
        .red.withAlphaComponent(opacity)
    }
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        
        slider.maximumValue = 100
        slider.value = Float(value)
        slider.thumbTintColor = color
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.onChange),
            for: .valueChanged
        )
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.setValue(Float(value), animated: true)
        uiView.thumbTintColor = color
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $value)
    }
}

// MARK: - Coordinator
extension UISliderRepresentation {
    class Coordinator: NSObject {
        @Binding var value: Double
        
        init(value: Binding<Double>) {
            self._value = value
        }
        
        @objc func onChange(_ sender: UISlider) {
            value = Double(sender.value)
        }
    }
}

struct UISliderRepresentation_Previews: PreviewProvider {
    static var previews: some View {
        UISliderRepresentation(value: .constant(50), opacity: 0.5)
    }
}
