//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Administrator on 2/17/19.
//  Copyright © 2019 Nyi Nyi Htun Lwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallIndex : Int = 0
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]

    @IBOutlet weak var ivBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        showAnswer()
    }
    
    func showAnswer() {
        randomBallIndex = Int(arc4random_uniform(5))
        ivBall.image = UIImage(named:ballArray[randomBallIndex])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        showAnswer()
    }
}

