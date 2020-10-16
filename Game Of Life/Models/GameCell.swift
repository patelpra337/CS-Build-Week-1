//
//  GameCell.swift
//  Game Of Life
//
//  Created by patelpra on 10/15/20.
//

import Foundation

enum State {
    case alive
    case dead
    case neverLived
}

class Cell {
    let x: Int, y: Int
    var state: State
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
        state = .neverLived
    }
}
