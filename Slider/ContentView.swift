//
//  ContentView.swift
//  Slider
//
//  Created by Дмитрий Лубов on 02.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var targetValue = Int.random(in: 0...100)
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue)")
            
            HStack {
                Text("0")
                Spacer()
                Text("100")
            }
            
            Button("Проверь меня!") {
                
            }
            
            Button("Начать заново") {
                
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
