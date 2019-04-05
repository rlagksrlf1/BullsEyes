//
//  ViewController.swift
//  BullsEyes
//
//  Created by sgcs on 2019. 4. 5..
//  Copyright © 2019년 KyungKoo Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50
    var targetValue = 0
    var score = 0
    var round = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        startNewRound()
    }
    
    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    @IBAction func showAlert(){
        let difference = abs(targetValue - currentValue)
        let points = 100 - difference
        score += points
        
        let message = "You scored \(points) points"
        
        /*let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)"*/
        let alert = UIAlertController(title: "Hello, World", message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
        print(" The value of the slider is now:\(currentValue)")
    }

}

