//
//  SliderManager.swift
//  Slider
//
//  Created by Дмитрий Лубов on 02.05.2023.
//

import Foundation

final class SliderManager: ObservableObject {
    @Published var game = Game.newGame()
    
    var opacity: CGFloat {
        CGFloat(Double(game.score) / 100)
    }
    
    func resetSlider() {
        game = Game.newGame()
    }
}
