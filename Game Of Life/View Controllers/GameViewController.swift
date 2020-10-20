//
//  GameViewController.swift
//  Game Of Life
//
//  Created by patelpra on 10/19/20.
//

import UIKit

class GameViewController: UIViewController {
    
    var world = GameState(size: 20)
    var startStop: Bool = false
    var timer: Timer?
    var generationCount = 0 {
        didSet {
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @objc func autoTimer(timer: Timer) {
        if !startStop {
            time.invalidate()
        } else {
            generationCount += 1
            self.world.
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension GameViewController: UICollectionViewDelegate {}
extension GameViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.world.
    }
}
