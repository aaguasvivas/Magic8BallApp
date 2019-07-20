//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Adelson Aguasvivas on 7/20/19.
//  Copyright © 2019 Adelson Aguasvivas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomChange()
    }

    @IBAction func askButton(_ sender: UIButton) {
        randomChange()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomChange()
    }
    
    func randomChange() {
        randomBallNumber = Int.random(in: 0 ... 4)
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
}

