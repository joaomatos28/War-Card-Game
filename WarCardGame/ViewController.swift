//
//  ViewController.swift
//  WarCardGame
//
//  Created by Joao Matos on 04/10/19.
//  Copyright © 2019 Joao Matos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCardImageView: UIImageView!
    
    
    @IBOutlet weak var rightCardImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftCardImageView.image = UIImage(named: "card\(leftNumber)")
        rightCardImageView.image = UIImage(named: "card\(rightNumber)")
        
        if (leftNumber > rightNumber){
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if(leftNumber < rightNumber){
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else{
            //idle
        }
    }
    
}

