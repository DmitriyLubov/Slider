//
//  ContentView.swift
//  Slider
//
//  Created by Дмитрий Лубов on 02.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var sliderManager = SliderManager()
    @State private var showAlert = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Подвиньте слайдер, как можно ближе к: \(sliderManager.game.targetValue)")
            
            SliderView(
                value: $sliderManager.game.currentValue,
                opacityThumb: sliderManager.opacityThumb
            )
            
            Button("Проверь меня!") {
                showAlert.toggle()
            }
            .alert("Your Score", isPresented: $showAlert, actions: {}) {
                Text(sliderManager.game.score.formatted())
            }
            
            Button("Начать заново") {
                withAnimation {
                    sliderManager.resetSlider()
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
