//
//  GameCell.swift
//  Game Of Life
//
//  Created by patelpra on 10/15/20.
//

import Foundation

public enum State {
    case alive
    case dead
}

struct GamerCell {
    let x: Int
    let y: Int
    var state: State
    
    func isNeighbor(to cell: GamerCell) -> Bool {
        let xDelta = abs(self.x - cell.x)
        let yDelta = abs(self.y - cell.y)
        
        switch (xDelta, yDelta) {
        case (1, 1), (0, 1), (1, 0):
            return true
        default:
            return false
        }
    }
}
