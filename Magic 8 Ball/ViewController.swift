//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Calvin Tirrell on 1/11/19.
//  Copyright © 2019 CT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        changeBallImage()
    }
    
    func changeBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeBallImage()
    }

}
