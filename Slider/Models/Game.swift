//
//  Game.swift
//  Slider
//
//  Created by Дмитрий Лубов on 02.05.2023.
//

import Foundation

struct Game {
    let targetValue: Int
    var currentValue: Double
    
    var score: Int {
        computerScore()
    }
    
    static func newGame() -> Game {
        Game(
            targetValue: Int.random(in: 0...100),
            currentValue: Double.random(in: 0...100)
        )
    }
    
    private func computerScore() -> Int {
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
}
