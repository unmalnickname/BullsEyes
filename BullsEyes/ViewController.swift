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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sliderMover(_ slider: UISlider){
        print("The Value of the Slider is \(slider.value)")
        currentValue = lround(Double(slider.value))
        
    }
    @IBAction func showAlert(){
        let message = "The Value of the Slider is \(currentValue)"
        
        let alert = UIAlertController(title: "Hello, Comics Fans", message: message, preferredStyle: .alert)

        let action = UIAlertAction(title: "Marvel", style: .default, handler: nil)
        
        alert.addAction(action)

        present(alert, animated: true, completion: nil)
}

   
  
}


