//
//  ViewController.swift
//  BullsEyes
//
//  Created by Luis Avila on 10/31/17.
//  Copyright © 2017 Luis Avila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue : Int = 0
    @IBOutlet weak var slider: UISlider!
    var targetValue: Int = 0
    @IBOutlet weak var targetLabel: UILabel!
    var score = 0
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        starNewRound()
    }
    func updateLabels() {
        targetLabel.text = String(targetValue)
//        scoreLabel.text
    }
    func starNewRound(){
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 0
        slider.value = Float(currentValue)
        updateLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recrea ted.
    }
    @IBAction func sliderMover(_ slider: UISlider){
        print("The Value of the Slider is \(slider.value)")
        currentValue = lroundf(slider.value)

    }
    @IBAction func showAlert(){
        
//        var difference: Int
//        if currentValue > targetValue {
//            difference = currentValue - targetValue
//        }else if targetValue > currentValue{
//            difference = targetValue - currentValue
//        } else {
//            difference = 0
//        }
        let difference: Int = abs(targetValue - currentValue)
        let points = 100 - difference
        score += points
        
        let message = "You scored \(points) points"
        
        let alert = UIAlertController(title: "Hello, Comics Fans", message: message, preferredStyle: .alert)

        let action = UIAlertAction(title: "Marvel", style: .default, handler: nil)
        
        alert.addAction(action)

        present(alert, animated: true, completion: nil)
        starNewRound()
}
    
}

   
  




