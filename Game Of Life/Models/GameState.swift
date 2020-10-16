//
//  GameState.swift
//  Game Of Life
//
//  Created by patelpra on 10/15/20.
//

import Foundation

class World {
    
    var cells: [Cell]
    let dimensions: Int = 20
    
    init() {
        cells = [Cell]()
        
        // create the cells
        for x in 0..<dimensions {
            for y in 0..<dimensions {
                cells.append(Cell(x: x, y: y))
            }
        }
    }
    
}
