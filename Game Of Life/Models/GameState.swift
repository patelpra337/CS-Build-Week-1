//
//  GameState.swift
//  Game Of Life
//
//  Created by patelpra on 10/15/20.
//

import Foundation

struct World {
    
    var cells = [Cell]()
    let dimensions: Int
    
    init(size: Int) {
        self.dimensions = size
    
    // create the cells
        for x in 0..<dimensions {
            for y in 0..<dimensions {
                let randomState = arc4random_uniform(3)
                let cell = Cell(x: x, y: y, state: randomState == 0 ? .alive : .dead)
                cells.append(cell)
            }
        }
    }
    
    mutating func updateCells() {
        var updatedCells: [Cell] = []
        let liveCells: [Cell] = cells.filter { $0.state == .alive }
        
        for cell in cells {
            let activeNeighbors = liveCells.filter { $0.isNeighbor(to: cell) }
            
            switch activeNeighbors.count {
            case 2...3 where cell.state == .alive:
                updatedCells.append(cell)
            case 3 where cell.state == .dead:
                let liveCell = Cell(x: cell.x, y: cell.y, state: .alive)
                updatedCells.append(liveCell)
            default:
                let deadCell = Cell(x: cell.x, y: cell.y, state: .dead)
                updatedCells.append(deadCell)
            }
        }
        self.cells = updatedCells
    }
}
