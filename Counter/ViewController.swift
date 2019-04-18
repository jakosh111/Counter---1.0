//
//  ViewController.swift
//  Counter
//
//  Created by M on 4/18/19.
//  Copyright © 2019 SuperPower. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var countedNumber = Int()
    
    

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.isHidden = true
    }

    
    @IBAction func resetPressed(_ sender: AnyObject) {
        updateScore()
        countedNumber = 0
        countLabel.text = String(0)
    }
    
    @IBAction func pausePressed(_ sender: Any) {
        updateScore()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        countedNumber += 1
        countLabel.text = String(countedNumber)
    }
    
    func updateScore() {
        scoreLabel.isHidden = false
        scoreLabel.text = "Total score:  \(countedNumber)"
    }
    
}

